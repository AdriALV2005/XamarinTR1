using System;
using Xamarin.Forms;

namespace Proyecto.Controls
{
    public class OccupiedColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string estado = (string)value;

            // Si está ocupado o reservado, mostrar la imagen del carro
            if (estado == "ocupado" || estado == "reservado")
            {
                return "carro.webp"; // Devuelve la imagen del carro
            }

            return Color.FromHex("#FF5722"); // Reemplaza por el código hexadecimal correcto
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
