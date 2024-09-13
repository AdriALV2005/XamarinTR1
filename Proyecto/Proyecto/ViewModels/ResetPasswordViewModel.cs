using Firebase.Auth;
using Proyecto.Conexion;
using System;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class ResetPasswordViewModel : BaseViewModel
    {
        private string email;

        public string Email
        {
            get => email;
            set => SetValue(ref email, value);
        }

        public Command ResetPasswordCommand { get; }

        public ResetPasswordViewModel(INavigation navigation)
        {
            Navigation = navigation;
            ResetPasswordCommand = new Command(async () => await ResetPasswordAsync());
        }

        private async Task ResetPasswordAsync()
        {
            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig(DBConn.WepApyAuthentication));
                await authProvider.SendPasswordResetEmailAsync(Email);
                await Application.Current.MainPage.DisplayAlert("Éxito", "Se ha enviado un enlace de restablecimiento a tu correo electrónico.", "Aceptar");
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Error", $"Hubo un problema al enviar el enlace de restablecimiento: {ex.Message}", "Aceptar");
            }
        }
    }
}
