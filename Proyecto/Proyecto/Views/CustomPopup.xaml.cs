using Proyecto.Services;
using Proyecto.ViewModels;
using Rg.Plugins.Popup.Pages;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class CustomPopup : PopupPage
    {
        public CustomPopup(string firebaseId)
        {
            InitializeComponent();

            // Obtener la instancia del servicio de usuario
            var userService = DependencyService.Get<IUserService>();

            // Pasar la instancia del servicio al ViewModel
            BindingContext = new CustomPopupViewModel(firebaseId, userService);
        }
    }
}
