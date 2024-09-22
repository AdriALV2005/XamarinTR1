using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
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
            if (parkingSpace.Estado == "ocupado")
            {
                await Application.Current.MainPage.DisplayAlert("Espacio ocupado", "Este espacio está ocupado.", "OK");
            }
            else if (parkingSpace.Estado == "reservado")
            {
                await Application.Current.MainPage.DisplayAlert("Espacio reservado", "Este espacio está reservado.", "OK");
            }
            else
            {
                await Application.Current.MainPage.Navigation.PushAsync(new ReservationPage(parkingSpace));
            }
        }

        private void SubscribeToParkingSpaceChanges()
        {
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

        private void UpdateOrAddParkingSpace(ParkingSpaceModel updatedSpace)
        {
            var existingSpace = ParkingSpaces.FirstOrDefault(p => p.SpaceID == updatedSpace.SpaceID);
            if (existingSpace != null)
            {
                existingSpace.SpaceName = updatedSpace.SpaceName;
                existingSpace.Estado = updatedSpace.Estado;
            }
            else
            {
                ParkingSpaces.Add(updatedSpace);
            }
            Device.BeginInvokeOnMainThread(() => OnPropertyChanged(nameof(ParkingSpaces)));
        }

        private void RemoveParkingSpace(ParkingSpaceModel spaceToRemove)
        {
            var existingSpace = ParkingSpaces.FirstOrDefault(p => p.SpaceID == spaceToRemove.SpaceID);
            if (existingSpace != null)
            {
                ParkingSpaces.Remove(existingSpace);
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