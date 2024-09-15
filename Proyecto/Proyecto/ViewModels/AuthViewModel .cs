using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using Proyecto.Conexion;
using Proyecto.Models;
using System;
using System.Collections.Generic;
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
        private string phoneNumber;
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

        public string PhoneNumber
        {
            get => phoneNumber;
            set => SetValue(ref phoneNumber, value);
        }

        public string FullName => $"{FirstName} {LastName}";
        #endregion

        #region Commands
        public Command ResetPasswordCommand { get; }
        public Command RegisterCommand { get; }
        public Command LoginCommand { get; }
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

            if (!IsValidPhoneNumber(PhoneNumber))
            {
                await Application.Current.MainPage.DisplayAlert("Advertencia", "El número de celular debe tener 9 dígitos.", "Aceptar");
                return;
            }

            var newUser = new UserModel()
            {
                EmailField = Email,
                PasswordField = Password,
                FirstName = FirstName,
                LastName = LastName,
                PhoneNumber = PhoneNumber
               
            };

            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig(DBConn.WepApyAuthentication));
                var authUser = await authProvider.CreateUserWithEmailAndPasswordAsync(newUser.EmailField, newUser.PasswordField);
                string obtenerToken = authUser.FirebaseToken;

               
                var userDictionary = new Dictionary<string, string>
                {
                    { "EmailField", newUser.EmailField },
                    { "PasswordField", newUser.PasswordField },
                    { "FirstName", newUser.FirstName },
                    { "LastName", newUser.LastName },
                    { "PhoneNumber", newUser.PhoneNumber }
                };

               
                var firebaseClient = new FirebaseClient(DBConn.FirebaseUrl);
                await firebaseClient.Child("users").PostAsync(userDictionary);

                await Application.Current.MainPage.DisplayAlert("Éxito", "Usuario registrado correctamente.", "Aceptar");

             
                await Navigation.PopAsync();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Advertencia", $"Error al registrar: {ex.Message}", "Aceptar");
            }
        }

        private bool IsValidPhoneNumber(string phoneNumber)
        {
            
            return phoneNumber.Length == 9 && long.TryParse(phoneNumber, out _);
        }
        #endregion
    }
}
