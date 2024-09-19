using Proyecto.Services;
using Proyecto.Views;
using Xamarin.Forms;

namespace Proyecto
{
    public partial class App : Application
    {
        public static bool IsUserLoggedIn { get; set; }
        public App()
        {
            InitializeComponent();

            DependencyService.Register<IUserService, UserService>();

            MainPage = new NavigationPage(new OnboardingPage()); 
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}