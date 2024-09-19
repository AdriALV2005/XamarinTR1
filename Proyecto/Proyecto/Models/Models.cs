using System;
using Xamarin.Forms;

namespace Proyecto.Models
{
    public class ParkingSpaceModel
    {
        public int SpaceID { get; set; }
        public string SpaceNumber { get; set; }
        public string Estado { get; set; }

        public Color SpaceColor
        {
            get
            {
                return Estado == "ocupado" ? Color.Red :
                       Estado == "reservado" ? Color.Orange :
                       Color.Green;
            }
        }
    }
}
