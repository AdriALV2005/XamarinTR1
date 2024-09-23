using Proyecto.Conexion;
using Proyecto.Services;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class CustomPopupViewModel : BindableObject
    {
        private readonly IUserService _userService;

        // Propiedad para mostrar el nombre completo del usuario logueado
        public string FullName { get; set; }

        // Otras propiedades para los datos de Firebase
        public string HoraActual { get; set; }
        public string HoraLlegada { get; set; }
        public string IdSeparacion { get; set; }
        public int TiempoReservacion { get; set; }
        public int TotalPagar { get; set; }
        public string UbicacionEstacionamiento { get; set; }

        // Comando para cerrar el pop-up
        public Command CerrarPopupCommand { get; }

        public CustomPopupViewModel(string firebaseId, IUserService userService)
        {
            _userService = userService;
            CerrarPopupCommand = new Command(async () => await Rg.Plugins.Popup.Services.PopupNavigation.Instance.PopAsync());

            // Cargar el nombre completo del usuario logueado
            LoadCurrentUserAsync();

            // Cargar los datos desde Firebase
            LoadReservationData(firebaseId);
        }

        // Método para cargar el nombre completo del usuario logueado
        private async Task LoadCurrentUserAsync()
        {
            var currentUser = await _userService.GetCurrentUserAsync();
            if (currentUser != null)
            {
                // Concatenar FirstName y LastName para obtener el nombre completo
                FullName = $"{currentUser.FirstName} {currentUser.LastName}";
                OnPropertyChanged(nameof(FullName));
            }
        }

        // Método para cargar los datos de Firebase
        private async void LoadReservationData(string firebaseId)
        {
            try
            {
                using (var client = new System.Net.Http.HttpClient())
                {
                    var url = $"{DBConn.FirebaseUrl}/reservaciones/{firebaseId}.json";  // URL de la reserva específica
                    var response = await client.GetStringAsync(url);

                    // Deserializar la respuesta como un diccionario
                    var reservationData = Newtonsoft.Json.JsonConvert.DeserializeObject<System.Collections.Generic.Dictionary<string, object>>(response);

                    // Asignar los valores desde la respuesta de Firebase
                    HoraActual = reservationData.ContainsKey("HoraActual") ? reservationData["HoraActual"].ToString() : string.Empty;
                    HoraLlegada = reservationData.ContainsKey("HoraLlegada") ? reservationData["HoraLlegada"].ToString() : string.Empty;
                    IdSeparacion = reservationData.ContainsKey("Id_Separacion") ? reservationData["Id_Separacion"].ToString() : string.Empty;
                    TiempoReservacion = reservationData.ContainsKey("TiempoReservacion") ? System.Convert.ToInt32(reservationData["TiempoReservacion"]) : 0;
                    TotalPagar = reservationData.ContainsKey("TotalPagar") ? System.Convert.ToInt32(reservationData["TotalPagar"]) : 0;
                    UbicacionEstacionamiento = reservationData.ContainsKey("UbicacionEstacionamiento") ? reservationData["UbicacionEstacionamiento"].ToString() : string.Empty;

                    // Notificar que las propiedades han cambiado
                    OnPropertyChanged(nameof(HoraActual));
                    OnPropertyChanged(nameof(HoraLlegada));
                    OnPropertyChanged(nameof(IdSeparacion));
                    OnPropertyChanged(nameof(TiempoReservacion));
                    OnPropertyChanged(nameof(TotalPagar));
                    OnPropertyChanged(nameof(UbicacionEstacionamiento));
                }
            }
            catch (System.Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Error", $"Error al cargar los datos: {ex.Message}", "OK");
            }
        }
    }
}
