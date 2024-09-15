using Proyecto.Views;
using System;
using System.ComponentModel;
using System.Windows.Input;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public class ReservationViewModel : INotifyPropertyChanged
    {
        // Variables
        private double _horasReservacion;
        private string _tipoVehiculoSeleccionado;
        private double _pagoPorHora;
        private double _costoVehiculo;
        private double _totalPagar;

        // Propiedades
        public DateTime HoraIngreso { get; set; }

        public DateTime HoraSalida
        {
            get => HoraIngreso.AddHours(HorasReservacion);
        }

        public double HorasReservacion
        {
            get => _horasReservacion;
            set
            {
                _horasReservacion = value;
                OnPropertyChanged(nameof(HorasReservacion));
                OnPropertyChanged(nameof(HoraSalida));
                CalcularTotal();
            }
        }

        public string TipoVehiculoSeleccionado
        {
            get => _tipoVehiculoSeleccionado;
            set
            {
                _tipoVehiculoSeleccionado = value;
                OnPropertyChanged(nameof(TipoVehiculoSeleccionado));
                CalcularTotal();
            }
        }

        public double PagoPorHora
        {
            get => _pagoPorHora;
            set
            {
                _pagoPorHora = value;
                OnPropertyChanged(nameof(PagoPorHora));
            }
        }

        public double CostoVehiculo
        {
            get => _costoVehiculo;
            set
            {
                _costoVehiculo = value;
                OnPropertyChanged(nameof(CostoVehiculo));
            }
        }

        public double TotalPagar
        {
            get => _totalPagar;
            set
            {
                _totalPagar = value;
                OnPropertyChanged(nameof(TotalPagar));
            }
        }

        public ICommand PagarCommand { get; }

        // Constructor
        public ReservationViewModel()
        {
            HoraIngreso = DateTime.Now;
            HorasReservacion = 1;
            TipoVehiculoSeleccionado = "Pequeño";

            PagarCommand = new Command(Pagar);
        }

        // Métodos
        private void CalcularTotal()
        {
            PagoPorHora = HorasReservacion * 10.00; // S/. 10.00 por hora

            switch (TipoVehiculoSeleccionado)
            {
                case "Pequeño":
                    CostoVehiculo = 5.00;
                    break;
                case "Mediano":
                    CostoVehiculo = 10.00;
                    break;
                case "Grande":
                    CostoVehiculo = 15.00;
                    break;
                default:
                    CostoVehiculo = 0;
                    break;
            }

            TotalPagar = PagoPorHora + CostoVehiculo;
        }

        private async void Pagar()
        {
            // Redirigir a la página del ticket y pasar los datos
            await Application.Current.MainPage.Navigation.PushAsync(new TicketPage()
            {
                BindingContext = new TicketViewModel(HoraIngreso, HoraSalida, PagoPorHora, TipoVehiculoSeleccionado, TotalPagar)
            });
        }

        // Implementación de INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
}
