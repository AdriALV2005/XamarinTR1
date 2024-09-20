using Newtonsoft.Json;
using Proyecto.Conexion;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class TicketSeparacionViewModel : BindableObject
    {
        private string _horaActual;
        private string _horaLlegada;
        private int _tiempoReservacion;
        private decimal _totalPagar;
        private string _ubicacionEstacionamiento;

        public string HoraActual
        {
            get => _horaActual;
            set
            {
                _horaActual = value;
                OnPropertyChanged();
            }
        }

        public string HoraLlegada
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

        // Constructor que recibe el ID de Firebase
        public TicketSeparacionViewModel(string firebaseId)
        {
            // Llamar a un método para cargar los datos basados en el ID
            LoadReservationData(firebaseId);
        }

        private async void LoadReservationData(string firebaseId)
        {
            try
            {
                using (var client = new HttpClient())
                {
                    var url = $"{DBConn.FirebaseUrl}/reservaciones/{firebaseId}.json";  // URL de la reserva específica
                    var response = await client.GetStringAsync(url);

                    // Deserializar la respuesta como un diccionario
                    var reservationData = JsonConvert.DeserializeObject<Dictionary<string, object>>(response);

                    // Asignar los valores deserializados a las propiedades
                    HoraActual = reservationData.ContainsKey("HoraActual") ? reservationData["HoraActual"].ToString() : "";
                    HoraLlegada = reservationData.ContainsKey("HoraLlegada") ? reservationData["HoraLlegada"].ToString() : "";
                    TiempoReservacion = reservationData.ContainsKey("TiempoReservacion") ? Convert.ToInt32(reservationData["TiempoReservacion"]) : 0;
                    TotalPagar = reservationData.ContainsKey("TotalPagar") ? Convert.ToDecimal(reservationData["TotalPagar"]) : 0;
                    UbicacionEstacionamiento = reservationData.ContainsKey("UbicacionEstacionamiento") ? reservationData["UbicacionEstacionamiento"].ToString() : "";
                }
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Error", $"Error al cargar los datos: {ex.Message}", "OK");
            }
        }

    }
}
