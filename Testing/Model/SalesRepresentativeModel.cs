using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuarITSolutions.Model
{
    public class SalesRepresentativeModel
    {
        public string UserID { get; set; } 
        public string UserName { get; set; }
        public int? DeviceId { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Area { get; set; }
        public string MobileNumber { get; set; }
        public string MobileNumber2 { get; set; }
        public string Role { get; set; }
        public string PassWord { get; set; }
        public string Coordinator { get; set; }
        public bool Active { get; set; }
        public string Latittude { get; set; }
        public string Longitude { get; set; }
        public int GroupAccount { get; set; }
        public string CommissionType { get; set; }
        public string BackPayType { get; set; }
        public string Cluster { get; set; }
    }
}