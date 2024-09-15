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

       
        private async void OnHomeClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ProfilePage());  
        }

  
        private async void OnCalendarClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new OnboardingPage());  
        }

      
        private async void OnNotificationsClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new LoginPage());  
        }

      
        private async void OnSettingsClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());  
        }

    }
}