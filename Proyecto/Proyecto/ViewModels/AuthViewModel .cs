using Firebase.Database;
using Firebase.Database.Query;
using Firebase.Auth;
using Proyecto.Conexion;
using Proyecto.Models;
using System;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class AuthViewModel : BaseViewModel
    {
        #region Atributos
        private string email;
        private string password;
        private string confirmPassword;
        private string firstName;
        private string lastName;
        #endregion

        #region Propiedades
        public string Email
        {
            get => email;
            set => SetValue(ref email, value);
        }

        public string Password
        {
            get => password;
            set => SetValue(ref password, value);
        }

        public string ConfirmPassword
        {
            get => confirmPassword;
            set => SetValue(ref confirmPassword, value);
        }

        public string FirstName
        {
            get => firstName;
            set => SetValue(ref firstName, value);
        }

        public string LastName
        {
            get => lastName;
            set => SetValue(ref lastName, value);
        }
        #endregion

        #region Commands
        public Command ResetPasswordCommand { get; }
        public Command RegisterCommand { get; }
        #endregion

        #region Constructor
        public AuthViewModel(INavigation navigation)
        {
            Navigation = navigation;
            ResetPasswordCommand = new Command(async () => await ResetPasswordAsync());
            RegisterCommand = new Command(async () => await RegisterUser());
        }
        #endregion

        #region Métodos
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

        private async Task RegisterUser()
        {
            if (Password != ConfirmPassword)
            {
                await Application.Current.MainPage.DisplayAlert("Advertencia", "Las contraseñas no coinciden.", "Aceptar");
                return;
            }

            var newUser = new UserModel()
            {
                EmailField = Email,
                PasswordField = Password,
                FirstName = FirstName,
                LastName = LastName
            };

            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig(DBConn.WepApyAuthentication));
                var authUser = await authProvider.CreateUserWithEmailAndPasswordAsync(newUser.EmailField, newUser.PasswordField);
                string obtenerToken = authUser.FirebaseToken;

                // Guardar datos adicionales en Firebase Realtime Database
                var firebaseClient = new FirebaseClient(DBConn.FirebaseDatabaseUrl);
                await firebaseClient
                    .Child("users")
                    .PostAsync(newUser);

                await Application.Current.MainPage.DisplayAlert("Éxito", "Usuario registrado correctamente.", "Aceptar");

                // Navegar a la página principal o de inicio de sesión
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Advertencia", $"Error al registrar: {ex.Message}", "Aceptar");
            }
        }
        #endregion
    }
}
