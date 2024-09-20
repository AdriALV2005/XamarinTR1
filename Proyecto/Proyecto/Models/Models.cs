using System;
using Xamarin.Forms;

namespace Proyecto.Models
{
    public class ParkingSpaceModel
    {
        public int SpaceID { get; set; }
        public string SpaceName { get; set; }
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

    namespace Proyecto.Models
    {
        public class SeparacionModel
        {
            public string Id_Separacion { get; set; }
            public DateTime HoraActual { get; set; }
            public DateTime HoraLlegada { get; set; }
            public int TiempoReservacion { get; set; }
            public decimal TotalPagar { get; set; }
            public string UbicacionEstacionamiento { get; set; }
            public string UserId { get; set; } // Nueva propiedad para el ID del usuario
        }
    }


}
