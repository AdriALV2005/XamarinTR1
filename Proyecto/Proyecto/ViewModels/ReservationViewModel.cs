using Newtonsoft.Json;
using Proyecto.Models;
using Proyecto.Conexion;
using Proyecto.Services;
using System.Net.Http;
using System.Text;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;
using System.Threading.Tasks;
using System;
using Proyecto.Views;
using System.Collections.Generic;




namespace Proyecto.ViewModels
{
    public class ReservationViewModel : BindableObject
    {
        private DateTime _horaActual;
        private DateTime _horaLlegada;
        private int _tiempoReservacion; // en minutos
        private decimal _totalPagar;
        private string _ubicacionEstacionamiento;
        private Timer _timer;

        private readonly IUserService _userService; // Servicio para obtener el usuario actual
        private ParkingSpaceModel _selectedSpace; // Objeto ParkingSpaceModel seleccionado

        public ReservationViewModel(ParkingSpaceModel selectedSpace)
        {
            _selectedSpace = selectedSpace;
            _userService = DependencyService.Get<IUserService>(); // Inicializar _userService

            if (_userService == null)
            {
                throw new NullReferenceException("IUserService no se ha registrado correctamente en DependencyService.");
            }

            _horaLlegada = DateTime.Now.AddMinutes(30);
            _tiempoReservacion = 30;
            _ubicacionEstacionamiento = selectedSpace.SpaceName;

            IncrementMinutesCommand = new Command(IncrementMinutes);
            DecrementMinutesCommand = new Command(DecrementMinutes);
            PagarCommand = new Command(async () => await Pagar());

            _timer = new Timer(1000);
            _timer.Elapsed += (sender, args) =>
            {
                HoraActual = DateTime.Now;
            };
            _timer.Start();

            CalculateTotalPagar();
        }

        public DateTime HoraActual
        {
            get => _horaActual;
            set
            {
                _horaActual = value;
                OnPropertyChanged();
            }
        }

        public DateTime HoraLlegada
        {
            get => _horaLlegada;
            set
            {
                _horaLlegada = value;
                OnPropertyChanged();
            }
        }

        public int TiempoReservacion
        {
            get => _tiempoReservacion;
            set
            {
                _tiempoReservacion = value;
                OnPropertyChanged();
                CalculateTotalPagar();
            }
        }

        // Propiedad que formatea el tiempo de reserva para mostrar horas y minutos de manera legible
        public string TiempoReservacionFormatted
        {
            get
            {
                if (TiempoReservacion >= 60)
                {
                    int hours = TiempoReservacion / 60;
                    int minutes = TiempoReservacion % 60;
                    return $"{hours} {(hours == 1 ? "hora" : "horas")}{(minutes > 0 ? $" {minutes} minutos" : "")}";
                }
                return $"{TiempoReservacion} minutos";
            }
        }

        public decimal TotalPagar
        {
            get => _totalPagar;
            set
            {
                _totalPagar = value;
                OnPropertyChanged();
            }
        }

        public string UbicacionEstacionamiento
        {
            get => _ubicacionEstacionamiento;
            set
            {
                _ubicacionEstacionamiento = value;
                OnPropertyChanged();
            }
        }

        public ICommand IncrementMinutesCommand { get; }
        public ICommand DecrementMinutesCommand { get; }
        public ICommand PagarCommand { get; }

        private void IncrementMinutes()
        {
            HoraLlegada = HoraLlegada.AddMinutes(30);
            TiempoReservacion += 30;
            OnPropertyChanged(nameof(TiempoReservacionFormatted));
        }

        private void DecrementMinutes()
        {
            if (TiempoReservacion > 30)
            {
                HoraLlegada = HoraLlegada.AddMinutes(-30);
                TiempoReservacion -= 30;
                OnPropertyChanged(nameof(TiempoReservacionFormatted));
            }
        }

        private void CalculateTotalPagar()
        {
            // Se cobra 5 soles por cada 30 minutos
            TotalPagar = (TiempoReservacion / 30) * 5;
        }

        private async Task Pagar()
        {
            // Obtener el usuario actual
            var currentUser = await _userService.GetCurrentUserAsync();
            if (currentUser == null)
            {
                await Application.Current.MainPage.DisplayAlert("Error", "No se pudo obtener la información del usuario.", "OK");
                return;
            }

            // Crear el modelo con los datos necesarios
            var separacion = new SeparacionModel
            {
                Id_Separacion = Guid.NewGuid().ToString(),
                HoraActual = HoraActual,
                HoraLlegada = HoraLlegada,
                TiempoReservacion = TiempoReservacion,
                TotalPagar = TotalPagar,
                UbicacionEstacionamiento = _ubicacionEstacionamiento,
                UserId = currentUser.UserID
            };

            // Convertir el modelo a JSON
            var json = JsonConvert.SerializeObject(separacion);
            var content = new StringContent(json, Encoding.UTF8, "application/json");

            try
            {
                // Enviar los datos a Firebase
                using (var client = new HttpClient())
                {
                    var url = $"{DBConn.FirebaseUrl}/reservaciones.json";
                    var response = await client.PostAsync(url, content);

                    if (response.IsSuccessStatusCode)
                    {
                        // Leer la respuesta y obtener el ID generado por Firebase
                        var responseData = await response.Content.ReadAsStringAsync();
                        var responseObject = JsonConvert.DeserializeObject<Dictionary<string, string>>(responseData);
                        var firebaseId = responseObject["name"];

                        // Actualizar el estado del espacio a "reservado"
                        _selectedSpace.Estado = "reservado"; // Cambiar estado a "reservado"

                        // Asegúrate de que la propiedad 'SpaceID' sea de tipo string
                        var updateJson = JsonConvert.SerializeObject(new { estado = _selectedSpace.Estado }); // Enviar solo el campo 'estado'
                        var updateContent = new StringContent(updateJson, Encoding.UTF8, "application/json");

                        // Crear una solicitud PATCH
                        var patchRequest = new HttpRequestMessage(new HttpMethod("PATCH"), $"{DBConn.FirebaseUrl}/parkingSpaces/{_selectedSpace.SpaceID}.json")
                        {
                            Content = updateContent
                        };

                        // Enviar la solicitud PATCH
                        var updateResponse = await client.SendAsync(patchRequest);

                        if (updateResponse.IsSuccessStatusCode)
                        {
                            // Navegar a la vista TicketSeparacion y pasar el ID generado por Firebase
                            await Application.Current.MainPage.Navigation.PushAsync(
                                new TicketSeparacion(
                                    currentUser.FirstName,
                                    currentUser.LastName,
                                    firebaseId // Pasar el ID generado por Firebase
                                )
                            );
                        }
                        else
                        {
                            await Application.Current.MainPage.DisplayAlert("Error", "No se pudo actualizar el estado del espacio.", "OK");
                        }
                    }
                    else
                    {
                        await Application.Current.MainPage.DisplayAlert("Error", "No se pudieron guardar los datos en Firebase.", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Error", $"Ocurrió un error: {ex.Message}", "OK");
            }
        }


        // Detener el temporizador al finalizar la vista
        public void StopTimer()
        {
            _timer?.Stop();
        }
    }
}
