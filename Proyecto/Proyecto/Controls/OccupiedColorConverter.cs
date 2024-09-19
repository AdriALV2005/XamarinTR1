using System;
using Xamarin.Forms;

namespace Proyecto.Controls
{
    public class OccupiedColorConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            bool isOccupied = (bool)value;
            return isOccupied ? Color.OrangeRed : Color.SkyBlue;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}