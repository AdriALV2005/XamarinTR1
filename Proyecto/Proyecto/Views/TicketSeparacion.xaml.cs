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
        public TicketSeparacion(string firstName, string lastName)
        {
            InitializeComponent();

            // Mostrar los nombres y apellidos del usuario
            NombreCompletoLabel.Text = $"Nombre Completo: {firstName} {lastName}";

         
        }
    }



}

