using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using Firebase.Database;
using Firebase.Database.Query;
using Proyecto.Conexion;
using Proyecto.Models;
using Proyecto.Views;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class ParkingSpacesViewModel : INotifyPropertyChanged
    {
        public Command<ParkingSpaceModel> CheckAndNavigateCommand { get; }

        private ObservableCollection<ParkingSpaceModel> _parkingSpaces;
        public ObservableCollection<ParkingSpaceModel> ParkingSpaces
        {
            get => _parkingSpaces;
            set
            {
                _parkingSpaces = value;
                OnPropertyChanged();
            }
        }

        private readonly FirebaseClient _firebaseClient;

        public ParkingSpacesViewModel()
        {
            _firebaseClient = new FirebaseClient(DBConn.FirebaseUrl);
            ParkingSpaces = new ObservableCollection<ParkingSpaceModel>();
            SubscribeToParkingSpaceChanges();
            CheckAndNavigateCommand = new Command<ParkingSpaceModel>(OnCheckAndNavigate);
        }

        private async void OnCheckAndNavigate(ParkingSpaceModel parkingSpace)
        {
            if (parkingSpace.IsOccupied)
            {
                // Mostrar pop-up si el espacio está ocupado
                await Application.Current.MainPage.DisplayAlert("Espacio ocupado", "Este espacio está ocupado.", "OK");
            }
            else
            {
                // Redirigir a ReservationPage si no está ocupado
                await Application.Current.MainPage.Navigation.PushAsync(new ReservationPage(parkingSpace));
            }
        }

        // Suscribir a cambios en tiempo real en Firebase
        private void SubscribeToParkingSpaceChanges()
        {
            // Escuchar los cambios en tiempo real del nodo "parkingSpaces"
            _firebaseClient
                .Child("parkingSpaces")
                .AsObservable<ParkingSpaceModel>()
                .Subscribe((dbEvent) =>
                {
                    if (dbEvent.Object == null)
                        return;

                    switch (dbEvent.EventType)
                    {
                        case Firebase.Database.Streaming.FirebaseEventType.InsertOrUpdate:
                            UpdateOrAddParkingSpace(dbEvent.Object);
                            break;
                        case Firebase.Database.Streaming.FirebaseEventType.Delete:
                            RemoveParkingSpace(dbEvent.Object);
                            break;
                    }
                });
        }

        // Actualizar o agregar un espacio de aparcamiento en la colección
        private void UpdateOrAddParkingSpace(ParkingSpaceModel updatedSpace)
        {
            var existingSpace = ParkingSpaces.FirstOrDefault(p => p.SpaceID == updatedSpace.SpaceID);
            if (existingSpace != null)
            {
                // Si el espacio ya existe, actualiza sus datos
                existingSpace.SpaceNumber = updatedSpace.SpaceNumber;
                existingSpace.IsOccupied = updatedSpace.IsOccupied;
            }
            else
            {
                // Si el espacio no existe, lo agrega
                ParkingSpaces.Add(updatedSpace);
            }
            // Forzar la actualización de la interfaz
            Device.BeginInvokeOnMainThread(() => OnPropertyChanged(nameof(ParkingSpaces)));
        }

        // Eliminar un espacio de aparcamiento
        private void RemoveParkingSpace(ParkingSpaceModel spaceToRemove)
        {
            var existingSpace = ParkingSpaces.FirstOrDefault(p => p.SpaceID == spaceToRemove.SpaceID);
            if (existingSpace != null)
            {
                ParkingSpaces.Remove(existingSpace);
                // Forzar la actualización de la interfaz
                Device.BeginInvokeOnMainThread(() => OnPropertyChanged(nameof(ParkingSpaces)));
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}