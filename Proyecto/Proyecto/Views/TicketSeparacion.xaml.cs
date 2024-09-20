using Firebase.Database;
using Firebase.Database.Query;
using Proyecto.Conexion;
using Proyecto.Models.Proyecto.Models;
using Proyecto.ViewModels;
using Xamarin.Forms;
using System;

namespace Proyecto.Views
{
    public partial class TicketSeparacion : ContentPage
    {
        public TicketSeparacion(string firstName, string lastName, DateTime horaActual, DateTime horaLlegada, int tiempoReservacion, decimal totalPagar, string ubicacionEstacionamiento)
        {
            InitializeComponent();

            // Mostrar los nombres y apellidos del usuario
            NombreCompletoLabel.Text = $"Nombre Completo: {firstName} {lastName}";

            // Mostrar los datos de la reservación
            HoraActualLabel.Text = $"Hora Actual: {horaActual:HH:mm}";
            HoraLlegadaLabel.Text = $"Hora Estimada de Llegada: {horaLlegada:HH:mm}";
            TiempoReservacionLabel.Text = $"Tiempo de Reservación: {tiempoReservacion} minutos";
            TotalPagarLabel.Text = $"Total a Pagar: S/. {totalPagar:F2}";
            UbicacionEstacionamientoLabel.Text = $"Ubicación del Estacionamiento: {ubicacionEstacionamiento}";
        }
    }



}

