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
	public partial class ProfilePage : ContentPage
	{
        public ProfilePage()
        {
            InitializeComponent();
            BindingContext = new AuthViewModel(Navigation);
        }
        private async void OnChangePasswordTapped(object sender, EventArgs e)
        {
            // Navegar a la página de cambio de contraseña
            await Navigation.PushAsync(new ResetPasswordPage());
        }
    }
}