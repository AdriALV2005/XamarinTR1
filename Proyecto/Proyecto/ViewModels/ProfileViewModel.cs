using System;
using Xamarin.Forms;

namespace Proyecto.ViewModels
{
    public class ProfileViewModel : BaseViewModel
    {
        private string firstName;
        private string lastName;

        public string FirstName
        {
            get => firstName;
            set => SetValue(ref firstName, value);
        }

        public string LastName
        {
            get => lastName;
            set => SetValue(ref lastName, value);
        }

        public string FullName => $"{FirstName} {LastName}";

        public ProfileViewModel()
        {
            // Constructor
        }
    }
}