using Proyecto.ViewModels;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class Prueba : ContentPage
    {
        public Prueba()
        {
            InitializeComponent();
            BindingContext = new ParkingSpacesViewModel();
        }
    }
}