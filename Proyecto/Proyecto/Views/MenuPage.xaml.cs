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
    public partial class MenuPage : ContentPage
    {
        public MenuPage()
        {
            InitializeComponent();
        }

        private async void OnSpacesPageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SpacesPage());
        }

        private async void OnProfilePageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfilePage());
        }

        private async void OnTarifasPageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TarifasPage());
        }

        private async void OnSoportePageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SoportePage());
        }

        private async void OnHistorialPageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new HistorialPage());
        }

        private async void OnMiEspacioPageClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new MiEspacioPage());
        }
    }
}