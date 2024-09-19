using Proyecto.Models;
using Xamarin.Forms.Xaml;
using Xamarin.Forms;

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
        }
    }
}
