using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

// TemporizadorPage.xaml.cs
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
    }
}
