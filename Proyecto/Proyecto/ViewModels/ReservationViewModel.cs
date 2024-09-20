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
using Proyecto.Models.Proyecto.Models;
using Proyecto.Views;



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

        public ReservationViewModel()
        {
            _userService = DependencyService.Get<IUserService>();

            _horaLlegada = DateTime.Now.AddMinutes(30); // Hora inicial de llegada es 30 min después de la hora actual
            _tiempoReservacion = 30; // Por defecto 30 minutos
            _ubicacionEstacionamiento = "Bloque A";

            IncrementMinutesCommand = new Command(IncrementMinutes);
            DecrementMinutesCommand = new Command(DecrementMinutes);
            PagarCommand = new Command(async () => await Pagar());

            // Iniciar el temporizador para actualizar la hora actual en tiempo real
            _timer = new Timer(1000); // Actualizar cada segundo
            _timer.Elapsed += (sender, args) =>
            {
                HoraActual = DateTime.Now;
                HoraLlegada = HoraLlegada.AddSeconds(1); // Simular la hora estimada de llegada actualizándose
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
                UbicacionEstacionamiento = UbicacionEstacionamiento,
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
                        // Navegar a la vista TicketSeparacion y pasar todos los datos
                        await Application.Current.MainPage.Navigation.PushAsync(
                            new TicketSeparacion(
                                currentUser.FirstName,
                                currentUser.LastName,
                                separacion.HoraActual,
                                separacion.HoraLlegada,
                                separacion.TiempoReservacion,
                                separacion.TotalPagar,
                                separacion.UbicacionEstacionamiento
                            )
                        );
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
