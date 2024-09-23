using Proyecto.Services;
using Proyecto.ViewModels;
using System;
using System.Xml;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MenuPage : ContentPage
    {
        public MenuPage()
        {
            InitializeComponent();
            var userService = DependencyService.Get<IUserService>();

            // Concatenar FirstName y LastName manualmente
            string fullName = $"{userService.CurrentUser.FirstName} {userService.CurrentUser.LastName}";

            // Establecer el BindingContext de la página
            BindingContext = userService;

            // Asignar el nombre completo al Label
            nameLabel.Text = fullName;

        }






        private async void PerfilClicked(object sender, EventArgs e)
        {
           
            await Navigation.PushAsync(new ProfilePage());
        }
        private async void TarifasClicked(object sender, EventArgs e)
        {
          
            await DisplayAlert("Información", "No está disponible", "OK");
        }
        private async void SepararEspacioClicked(object sender, EventArgs e)
        {
       
            await Navigation.PushAsync(new SpacesPage());
        }
        private async void SoporteClicked(object sender, EventArgs e)
        {
            
            await DisplayAlert("Información", "No está disponible", "OK");
        }
        private async void MiEspacioClicked(object sender, EventArgs e)
        {
     
            await DisplayAlert("Información", "No está disponible", "OK");
        }
        private async void HistorialClicked(object sender, EventArgs e)
        {
            
            await DisplayAlert("Información", "No está disponible", "OK");
        }
    }
}