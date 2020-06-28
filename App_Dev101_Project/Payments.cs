using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace App_Dev101_Project
{
    public class Payments
    {
       
        public double Rate { get; set; }
        public double Hours { get; set; }
        public string Position{ get; set; }
        public double  Ads{ get; set; }

        public Payments()
        {
            Rate = 0.0;
            Hours = 0.0;
            Position = "";
            Ads = 0.0;
        }

        //Overloaded Constructor
        public Payments(double rate, double hours, double ads)
        {
            Rate = rate;
            Hours = hours;
            Ads = ads;
        }


        //Methods
        public double WeeklypayWithNoDeductions()
        {
           
            return(Hours*Rate) + Ads;
        }
    }
}