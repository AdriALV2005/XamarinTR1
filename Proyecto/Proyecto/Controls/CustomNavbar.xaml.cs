using Proyecto.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto.Controls
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CustomNavbar : ContentView
    {
        public CustomNavbar()
        {
            InitializeComponent();
        }

        private async void OnButtonPressed(object sender, EventArgs e)
        {
            var button = (ImageButton)sender;
            await button.ScaleTo(1.2, 100);
        }

        private async void OnButtonReleased(object sender, EventArgs e)
        {
            var button = (ImageButton)sender;
            await button.ScaleTo(1.0, 100);
        }


        private async void Home(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new SpacesPage());
        }


        private async void Estado(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfilePage());
        }


        private async void Usuario(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ParkingPage());
        }

        private async void Historial(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ReservationPage());

        }
        private async void Ticket(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TicketPage());

        }
    }
}