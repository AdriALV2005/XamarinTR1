using Newtonsoft.Json;
using Proyecto.Conexion;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Threading.Tasks;
using Xamarin.Forms;

public class CustomPopupViewModel : BindableObject
{
    // Propiedades para los datos de Firebase
    public string FirebaseId { get; set; }
    public string HoraActual { get; set; }
    public string HoraLlegada { get; set; }
    public string IdSeparacion { get; set; }
    public int TiempoReservacion { get; set; }
    public int TotalPagar { get; set; }
    public string UbicacionEstacionamiento { get; set; }
    public string UserId { get; set; }

    // Comando para cerrar el pop-up
    public Command CerrarPopupCommand { get; }

    public CustomPopupViewModel(string firebaseId)
    {
        FirebaseId = firebaseId;
        CerrarPopupCommand = new Command(async () => await Rg.Plugins.Popup.Services.PopupNavigation.Instance.PopAsync());

        // Cargar los datos desde Firebase
        LoadReservationData(firebaseId);
    }

    // Método para cargar los datos de Firebase
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

                // Asignar los valores desde la respuesta de Firebase
                HoraActual = reservationData.ContainsKey("HoraActual") ? reservationData["HoraActual"].ToString() : string.Empty;
                HoraLlegada = reservationData.ContainsKey("HoraLlegada") ? reservationData["HoraLlegada"].ToString() : string.Empty;
                IdSeparacion = reservationData.ContainsKey("Id_Separacion") ? reservationData["Id_Separacion"].ToString() : string.Empty;
                TiempoReservacion = reservationData.ContainsKey("TiempoReservacion") ? Convert.ToInt32(reservationData["TiempoReservacion"]) : 0;
                TotalPagar = reservationData.ContainsKey("TotalPagar") ? Convert.ToInt32(reservationData["TotalPagar"]) : 0;
                UbicacionEstacionamiento = reservationData.ContainsKey("UbicacionEstacionamiento") ? reservationData["UbicacionEstacionamiento"].ToString() : string.Empty;
                UserId = reservationData.ContainsKey("UserId") ? reservationData["UserId"].ToString() : string.Empty;

                // Notificar que las propiedades han cambiado
                OnPropertyChanged(nameof(HoraActual));
                OnPropertyChanged(nameof(HoraLlegada));
                OnPropertyChanged(nameof(IdSeparacion));
                OnPropertyChanged(nameof(TiempoReservacion));
                OnPropertyChanged(nameof(TotalPagar));
                OnPropertyChanged(nameof(UbicacionEstacionamiento));
                OnPropertyChanged(nameof(UserId));
            }
        }
        catch (Exception ex)
        {
            await Application.Current.MainPage.DisplayAlert("Error", $"Error al cargar los datos: {ex.Message}", "OK");
        }
    }
}
