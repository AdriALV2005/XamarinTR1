using Firebase.Database;
using Firebase.Database.Query;
using Proyecto.Conexion;
using Proyecto.Models; // Asegúrate de agregar esta directiva using para la nueva ubicación de ParkingSpace
using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class ParkingSpacesViewModel : BaseViewModel
    {
        private ObservableCollection<ParkingSpace> _parkingSpaces;
        public ObservableCollection<ParkingSpace> ParkingSpaces
        {
            get => _parkingSpaces;
            set => SetValue(ref _parkingSpaces, value);
        }

        public Command LoadParkingSpacesCommand { get; }

        public ParkingSpacesViewModel()
        {
            ParkingSpaces = new ObservableCollection<ParkingSpace>();
            LoadParkingSpacesCommand = new Command(async () => await LoadParkingSpacesAsync());
        }

        private async Task LoadParkingSpacesAsync()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                Debug.WriteLine("Iniciando carga de espacios de estacionamiento...");
                var firebaseClient = new FirebaseClient(DBConn.FirebaseUrl);

                Debug.WriteLine($"URL de Firebase: {DBConn.FirebaseUrl}");

                var parkingSpaces = await firebaseClient
                    .Child("parkingSpaces")
                    .OnceAsync<ParkingSpace>();

                ParkingSpaces.Clear();
                foreach (var space in parkingSpaces)
                {
                    ParkingSpaces.Add(new ParkingSpace
                    {
                        SpaceID = space.Object.SpaceID,
                        SpaceNumber = space.Object.SpaceNumber,
                        IsOccupied = space.Object.IsOccupied,
                        Place = space.Object.Place
                    });
                }

                Debug.WriteLine($"Espacios de estacionamiento cargados: {ParkingSpaces.Count}");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error al cargar espacios de estacionamiento: {ex.Message}");
                Debug.WriteLine($"StackTrace: {ex.StackTrace}");

                if (ex.InnerException != null)
                {
                    Debug.WriteLine($"Inner Exception: {ex.InnerException.Message}");
                    Debug.WriteLine($"Inner StackTrace: {ex.InnerException.StackTrace}");
                }

                await Application.Current.MainPage.DisplayAlert("Error", $"No se pudieron cargar los espacios de estacionamiento: {ex.Message}", "OK");
            }
            finally
            {
                IsBusy = false;
            }
        }
    }
}