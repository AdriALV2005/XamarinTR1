﻿using Proyecto.Views;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Proyecto
{
    public partial class App : Application
    {
        public static bool IsUserLoggedIn { get; set; }
        public App()
        {
            InitializeComponent();

            MainPage = new NavigationPage(new ParkingPage());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
