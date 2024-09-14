using Proyecto.Models;
using Proyecto.Views;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Input;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class OnboardingViewModel : INotifyPropertyChanged
    {
        private int _positionIndex;
        public ObservableCollection<Boarding> Boardings { get; set; }
        public ICommand NextCommand { get; set; }
        public ICommand SkipCommand { get; set; }

        public int PositionIndex
        {
            get => _positionIndex;
            set
            {
                if (_positionIndex != value)
                {
                    _positionIndex = value;
                    OnPropertyChanged(nameof(PositionIndex));
                    OnPropertyChanged(nameof(NextButtonText));
                }
            }
        }

        public string NextButtonText
        {
            get
            {
                return PositionIndex == Boardings.Count - 1 ? "TERMINAR" : "AVANZAR";
            }
        }

        public OnboardingViewModel()
        {
            Boardings = new ObservableCollection<Boarding>
            {
                new Boarding
                {
                    ImagePath = "uno.png",
                    Header = "Encuentra tu espacio",
                    Content = "Encuentra y reserva tu estacionamiento ideal en segundos. ¡Olvídate de buscar y empieza a aparcar con facilidad!",
                    CarouselItem = new WalkthroughItemPage()
                },
                new Boarding
                {
                    ImagePath = "dos.png",
                    Header = "Seguridad garantizada",
                    Content = "Tu vehículo está protegido con monitoreo continuo y seguridad avanzada. Relájate, sabemos cómo cuidar de tu coche.",
                    CarouselItem = new WalkthroughItemPage()
                },
                new Boarding
                {
                    ImagePath = "tres.png",
                    Header = "Pago sin complicaciones",
                    Content = "Paga rápida y fácilmente sin necesidad de efectivo. Disfruta de una experiencia de estacionamiento sin estrés y sin demoras.",
                    CarouselItem = new WalkthroughItemPage()
                },
                new Boarding
                {
                    ImagePath = "cuatro.png",
                    Header = "Soporte excepcional",
                    Content = "Nuestro equipo está disponible para asistirte en todo momento. Recibe ayuda rápida y soluciones a tus necesidades.",
                    CarouselItem = new WalkthroughItemPage()
                },
                new Boarding
                {
                    ImagePath = "cinco.png",
                    Header = "Ofertas y recompensas",
                    Content = "Aprovecha descuentos exclusivos y recompensas por usar nuestros servicios. Ahorrar mientras aparcas nunca fue tan fácil.",
                    CarouselItem = new WalkthroughItemPage()
                }
            };

            foreach (var boarding in Boardings)
            {
                boarding.CarouselItem.BindingContext = boarding;
            }

            NextCommand = new Command(Next);
            SkipCommand = new Command(StartMainPage);
        }

        private void StartMainPage()
        {
            Application.Current.MainPage = new NavigationPage(new LoginPage());
        }

        private void Next()
        {
            if (PositionIndex < Boardings.Count - 1)
            {
                PositionIndex++;
            }
            else
            {
                StartMainPage();
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
