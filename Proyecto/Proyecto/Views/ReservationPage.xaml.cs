using Proyecto.Models;
using Xamarin.Forms.Xaml;
using Xamarin.Forms;
using Proyecto.ViewModels;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ReservationPage : ContentPage
    {
        private ParkingSpaceModel _selectedSpace;

        public ReservationPage(ParkingSpaceModel selectedSpace)
        {
            InitializeComponent();
            _selectedSpace = selectedSpace;

            // Asignar el BindingContext con el ViewModel que acepta el modelo ParkingSpaceModel
            BindingContext = new ReservationViewModel(_selectedSpace);
        }
    }
}
