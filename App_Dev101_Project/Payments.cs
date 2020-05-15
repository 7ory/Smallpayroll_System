using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App_Dev101_Project
{
    public class Payments
    {
        //attributes
        private double Rate;
        private double Hours;
        private string Position;
        private double Ads;

        public double Rate1 { get => Rate; set => Rate = value; }
        public double Hours1 { get => Hours; set => Hours = value; }
        public string Position1 { get => Position; set => Position = value; }
        public double Ads1 { get => Ads; set => Ads = value; }

        //Default Constructor
        public Payments()
        {
            Rate = 0.0;
            Hours = 0.0;
            Position = "";
            Ads = 0.0;
        }

        //Overloaded Constructor
        public Payments(double Rt, double hrs, string Ptn, double A)
        {
            Rate = Rt;
            Hours = hrs;
            Position = Ptn;
            Ads = A;
        }

        //Methods
        public double WeeklypayWithNoDeductions()
        {
           
            return(Hours*Rate)+Ads;
        }
    }
}