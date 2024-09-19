using System;
using System.Timers;
using System.Windows.Input;
using Xamarin.Forms;

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

        public ReservationViewModel()
        {
            _horaLlegada = DateTime.Now.AddMinutes(30); // Hora inicial de llegada es 30 min después de la hora actual
            _tiempoReservacion = 30; // Por defecto 30 minutos
            _ubicacionEstacionamiento = "Bloque A";

            IncrementMinutesCommand = new Command(IncrementMinutes);
            DecrementMinutesCommand = new Command(DecrementMinutes);
            PagarCommand = new Command(Pagar);

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

        private void Pagar()
        {
            // Aquí agregarías la lógica para el pago
            Application.Current.MainPage.DisplayAlert("Pago", $"Total a Pagar: S/. {TotalPagar:F2}", "OK");
        }

        // Detener el temporizador al finalizar la vista
        public void StopTimer()
        {
            _timer?.Stop();
        }
    }
}