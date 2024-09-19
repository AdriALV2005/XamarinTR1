using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace Proyecto.Models
{
    public class ParkingSpaceModel
    {
        public int SpaceID { get; set; }
        public string SpaceNumber { get; set; }
        public bool IsOccupied { get; set; }

        public Color SpaceColor
        {
            get
            {
                return IsOccupied ? Color.Red : Color.Green;
            }
        }
    }


}