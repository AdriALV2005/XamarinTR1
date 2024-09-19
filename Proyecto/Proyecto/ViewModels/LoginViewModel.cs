using Firebase.Auth;
using Firebase.Database;
using Proyecto.Conexion;
using Proyecto.Models;
using Proyecto.Services;
using Proyecto.Views;
using System;
using System.Linq;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        private string email;
        private string clave;
        private readonly IUserService _userService;

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

        public Command LoginCommand { get; }

        public LoginViewModel(INavigation navigation)
        {
            Navigation = navigation;
            _userService = DependencyService.Get<IUserService>();
            LoginCommand = new Command(async () => await LoginUsuario());
        }

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

                var firebaseClient = new FirebaseClient(DBConn.FirebaseUrl);
                var userQuery = await firebaseClient
                    .Child("users")
                    .OnceAsync<UserModel>();

                var user = userQuery
                    .FirstOrDefault(u => u.Object.EmailField == objusuario.EmailField);

                if (user != null)
                {
                    var userData = user.Object;
                    await _userService.SetCurrentUserAsync(userData);

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
    }
}