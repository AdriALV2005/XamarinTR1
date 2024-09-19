using System;
using System.ComponentModel;
using System.Windows.Input;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public class TicketViewModel : INotifyPropertyChanged
    {
        // Propiedades del ticket
        public DateTime HoraIngreso { get; set; }
        public DateTime HoraSalida { get; set; }
        public double PagoPorHora { get; set; }
        public string TipoVehiculo { get; set; }
        public double TotalPagar { get; set; }

        public ICommand CerrarCommand { get; }

        // Constructor
        public TicketViewModel(DateTime horaIngreso, DateTime horaSalida, double pagoPorHora, string tipoVehiculo, double totalPagar)
        {
            HoraIngreso = horaIngreso;
            HoraSalida = horaSalida;
            PagoPorHora = pagoPorHora;
            TipoVehiculo = tipoVehiculo;
            TotalPagar = totalPagar;

            CerrarCommand = new Command(Cerrar);
        }

        // Método para cerrar la página de ticket
        private void Cerrar()
        {
            Application.Current.MainPage.Navigation.PopAsync(); // Regresar a la página anterior
        }

        // Implementación de INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
