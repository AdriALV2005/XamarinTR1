using System;
using Xamarin.Forms;

namespace Proyecto.Controls
{
    public class OccupiedColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            string estado = (string)value;

            // Devuelve el color basado en el estado del espacio
            return estado == "ocupado" ? Color.OrangeRed :
                   estado == "reservado" ? Color.Orange :
                   Color.SkyBlue; // Disponible
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
