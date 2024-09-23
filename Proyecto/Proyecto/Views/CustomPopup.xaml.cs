using Rg.Plugins.Popup.Pages;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class CustomPopup : PopupPage
    {
        public CustomPopup(string firebaseId)
        {
            InitializeComponent();
            BindingContext = new CustomPopupViewModel(firebaseId);
        }
    }
}
