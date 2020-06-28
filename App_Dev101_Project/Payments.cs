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
   
    
        

        //Methods
        public double WeeklypayWithNoDeductions()
        {
           
            return(Hours*Rate) + Ads;
        }
    }
}