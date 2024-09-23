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
        private readonly string _firebaseId; // Declaramos la variable de instancia
        private readonly int _spaceID; // También puedes almacenar el spaceID si lo necesitas más adelante

        public TemporizadorPage(string firebaseId, int spaceID)
        {
            InitializeComponent();
            _firebaseId = firebaseId; // Asignamos el valor recibido en el constructor
            _spaceID = spaceID;

            BindingContext = new TemporizadorViewModel(firebaseId, spaceID);
        }

        // Método para mostrar el pop-up
        private async void OnMostrarPopupClicked(object sender, EventArgs e)
        {
            await PopupNavigation.Instance.PushAsync(new CustomPopup(_firebaseId)); // Ahora _firebaseId está disponible
        }
    }
}
