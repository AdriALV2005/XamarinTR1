using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Proyecto.ViewModels;

namespace Proyecto.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OnboardingPage : ContentPage
    {
        private const uint AnimationDuration = 500; // Duration of animation in milliseconds

        public OnboardingPage()
        {
            InitializeComponent();
        }

        private void OnCarouselPositionChanged(object sender, PositionChangedEventArgs e)
        {
            var viewModel = BindingContext as OnboardingViewModel;
            if (viewModel != null)
            {
                int index = (int)e.CurrentPosition;
                UpdateProgressBar(index, viewModel.Boardings.Count);
            }
        }

        private void UpdateProgressBar(int index, int totalCount)
        {
            if (ProgressBarBackground == null || ProgressBarForeground == null) return;

            // Calcular el ancho de la franja de progreso basado en el índice
            double progressValue = (index + 1) / (double)totalCount;
            double maxWidth = ProgressBarBackground.Width; // Obtener el ancho total disponible
            double width = progressValue * maxWidth;

            // Animar la franja de progreso
            var animation = new Animation(
                callback: progress => ProgressBarForeground.WidthRequest = progress,
                start: ProgressBarForeground.WidthRequest,
                end: width,
                easing: Easing.CubicInOut);

            animation.Commit(this, "ProgressBarAnimation", length: AnimationDuration, easing: Easing.CubicInOut);
        }
    }
}
