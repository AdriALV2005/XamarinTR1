using Proyecto.ViewModels;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        public LoginPage()
        {
            InitializeComponent();
            BindingContext = new LoginViewModel(Navigation);
            Debug.WriteLine("LoginPage: Página cargada");

        }

        private async void OnRegisterClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegisterPage());
        }
        private async void OnForgotPasswordClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ResetPasswordPage());
        }
        private void OnTogglePasswordVisibility(object sender, EventArgs e)
        {
            if (txtclave.IsPassword)
            {
                imgOjo.Source = "ojo.png"; 
                txtclave.IsPassword = false; 
            }
            else
            {
                imgOjo.Source = "cerrarojo.png"; 
                txtclave.IsPassword = true; 
            }
        }


    }
}