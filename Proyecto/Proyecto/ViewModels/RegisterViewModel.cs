using Firebase.Auth;
using Proyecto.Conexion;
using Proyecto.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class RegisterViewModel : BaseViewModel
    {
        #region Atributos
        private string email;
        private string password;
        private string confirmPassword;
        #endregion

        #region Propiedades
        public string Email
        {
            get { return email; }
            set { SetValue(ref email, value); }
        }

        public string Password
        {
            get { return password; }
            set { SetValue(ref password, value); }
        }

        public string ConfirmPassword
        {
            get { return confirmPassword; }
            set { SetValue(ref confirmPassword, value); }
        }
        #endregion

        #region Commands
        public Command RegisterCommand { get; }
        #endregion

        #region Métodos
        public async Task RegisterUser()
        {
            if (Password != ConfirmPassword)
            {
                await App.Current.MainPage.DisplayAlert("Advertencia", "Las contraseñas no coinciden.", "Aceptar");
                return;
            }

            var newUser = new UserModel()
            {
                EmailField = Email,
                PasswordField = Password,
            };

            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig(DBConn.WepApyAuthentication));
                var authUser = await authProvider.CreateUserWithEmailAndPasswordAsync(newUser.EmailField.ToString(), newUser.PasswordField.ToString());
                string obtenerToken = authUser.FirebaseToken;

                await App.Current.MainPage.DisplayAlert("Éxito", "Usuario registrado correctamente.", "Aceptar");

                // Navegar a la página principal o de inicio de sesión
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Advertencia", $"Error al registrar: {ex.Message}", "Aceptar");
            }
        }
        #endregion

        #region Constructor
        public RegisterViewModel(INavigation navigation)
        {
            Navigation = navigation;
            RegisterCommand = new Command(async () => await RegisterUser());
        }
        #endregion
    }
}
