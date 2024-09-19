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


    public class VehicleTypeModel
    {
        public int TypeID { get; set; }
        public string TypeName { get; set; }
        public decimal HourlyRate { get; set; }
    }

    public class ReservationModel
    {
        public int ReservationID { get; set; }
        public int UserID { get; set; }
        public int SpaceID { get; set; }
        public int VehicleTypeID { get; set; }
        public DateTime StartTime { get; set; }
        public DateTime EndTime { get; set; }
        public decimal TotalHours { get; set; }
        public decimal TotalPrice { get; set; }
    }

    public class TicketModel
    {
        public int TicketID { get; set; }
        public int ReservationID { get; set; }
        public string TicketNumber { get; set; }
        public DateTime IssueTime { get; set; }
    }

    public class UserHistoryModel
    {
        public int HistoryID { get; set; }
        public int UserID { get; set; }
        public int ReservationID { get; set; }
    }
}