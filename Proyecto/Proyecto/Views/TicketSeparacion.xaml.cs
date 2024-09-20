using Proyecto.ViewModels;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class TicketSeparacion : ContentPage
    {
        public TicketSeparacion(string firstName, string lastName, string firebaseId)
        {
            InitializeComponent();

            // Mostrar el nombre completo del usuario
            NombreCompletoLabel.Text = $"{firstName} {lastName}";

            // Vincular el ViewModel a la vista
            BindingContext = new TicketSeparacionViewModel(firebaseId);
        }
    }
}
