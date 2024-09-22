using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms;

namespace Proyecto.Views
{
    public partial class CustomPopup : PopupPage
    {
        public Command CerrarPopupCommand { get; }

        public CustomPopup()
        {
            InitializeComponent();

            CerrarPopupCommand = new Command(async () =>
            {
                await PopupNavigation.Instance.PopAsync(true);
            });

            BindingContext = this;
        }
    }
}
