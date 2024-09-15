using System;
using System.Collections.Generic;
using System.Text;

namespace Proyecto.Models
{
    public class ParkingSpace
    {
        public int SpaceID { get; set; } 
        public string SpaceNumber { get; set; } 
        public bool IsOccupied { get; set; } 
        public int Place { get; set; } 
    }
}
