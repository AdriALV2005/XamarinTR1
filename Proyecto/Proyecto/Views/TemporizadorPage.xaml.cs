using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Rg.Plugins.Popup.Services; // Importar la librería de Pop-up
using Proyecto.Views; // Asegúrate de importar la vista del pop-up

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class TemporizadorPage : ContentPage
    {
        public TemporizadorPage(string firebaseId, int spaceID)
        {
            InitializeComponent();
            BindingContext = new TemporizadorViewModel(firebaseId, spaceID);
        }

        // Método para mostrar el pop-up
        private async void OnMostrarPopupClicked(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PushAsync(new CustomPopup());
        }
    }
}
