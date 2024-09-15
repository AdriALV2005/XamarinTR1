using Proyecto.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Prueba : ContentPage
    {
        public Prueba()
        {
            InitializeComponent();
            BindingContext = new ParkingSpacesViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            ((ParkingSpacesViewModel)BindingContext).LoadParkingSpacesCommand.Execute(null);
        }
    }
}