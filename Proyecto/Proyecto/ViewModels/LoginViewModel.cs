using Firebase.Auth;
using Firebase.Database;
using Proyecto.Conexion;
using Proyecto.Models;
using Proyecto.Views;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using System.Linq;
using Google.Type;
using Xamarin.Essentials;

namespace Proyecto.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        #region Atributos
        private string email;
        private string clave;
        #endregion

        #region Propiedades
        public string txtemail
        {
            get { return email; }
            set { SetValue(ref email, value); }
        }
        public string txtclave
        {
            get { return clave; }
            set { SetValue(ref clave, value); }
        }

        #endregion

        #region Command
        public Command LoginCommand { get; }
        #endregion

        #region Metodo
        public async Task LoginUsuario()
        {
            var objusuario = new UserModel()
            {
                EmailField = email,
                PasswordField = clave,
            };

            try
            {
                var autenticacion = new FirebaseAuthProvider(new FirebaseConfig(DBConn.WepApyAuthentication));
                var authuser = await autenticacion.SignInWithEmailAndPasswordAsync(objusuario.EmailField.ToString(), objusuario.PasswordField.ToString());
                string obtenertoken = authuser.FirebaseToken;

                // Retrieve user data from Firebase
                var firebaseClient = new FirebaseClient(DBConn.FirebaseUrl);
                var userQuery = await firebaseClient
                    .Child("users")
                    .OnceAsync<UserModel>();

                var user = userQuery
                    .Where(u => u.Object.EmailField == objusuario.EmailField)
                    .FirstOrDefault();

                if (user != null)
                {
                    var userData = user.Object;

                    var profilePage = new ProfilePage();
                    profilePage.BindingContext = new AuthViewModel(Navigation)
                    {
                        FirstName = userData.FirstName,
                        LastName = userData.LastName,
                        PhoneNumber = userData.PhoneNumber,
                        Email = userData.EmailField,
                        Password = userData.PasswordField
                    };

                    var Propiedades_NavigationPage = new NavigationPage(profilePage);
                    //Propiedades_NavigationPage.BarBackgroundColor = Color.RoyalBlue;
                    App.Current.MainPage = Propiedades_NavigationPage;
                }
                else
                {
                    await App.Current.MainPage.DisplayAlert("Error", "User data not found.", "OK");
                }
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Advertencia", "Los datos introducidos son incorrectos o el usuario se encuentra inactivo.", "Aceptar");
                // You might want to log the exception: Console.WriteLine(ex);
            }
        }
        #endregion

        #region Constructor
        public LoginViewModel(INavigation navegar)
        {
            Navigation = navegar;
            LoginCommand = new Command(async () => await LoginUsuario());

        }
        #endregion
    }
}
