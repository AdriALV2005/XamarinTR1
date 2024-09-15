using Proyecto.Services;
using Proyecto.ViewModels;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class ProfilePage : ContentPage
    {
        private readonly IUserService _userService;

        public ProfilePage()
        {
            InitializeComponent();
            _userService = DependencyService.Get<IUserService>();
            LoadUserData();
        }

        private async void LoadUserData()
        {
            var user = await _userService.GetCurrentUserAsync();
            if (user != null)
            {
                BindingContext = new AuthViewModel(Navigation)
                {
                    FirstName = user.FirstName,
                    LastName = user.LastName,
                    PhoneNumber = user.PhoneNumber,
                    Email = user.EmailField,
                    Password = user.PasswordField
                };
            }
        }

        private async void OnChangePasswordTapped(object sender, System.EventArgs e)
        {
            // Implementar la lógica para cambiar la contraseña
            await DisplayAlert("Cambiar Contraseña", "Aquí iría la lógica para cambiar la contraseña.", "OK");
        }
    }
}