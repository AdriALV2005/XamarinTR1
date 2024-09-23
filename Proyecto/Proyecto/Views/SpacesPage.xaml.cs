using Proyecto.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class SpacesPage : ContentPage
    {
        public SpacesPage()
        {
            InitializeComponent();
            BindingContext = new ParkingSpacesViewModel();
        }

        private async void ButtonMapa(object sender, EventArgs e)
        {
            await DisplayAlert("Información", "No está disponible", "OK");

        }
    }
}