using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuarITSolutions.Model
{
    public class SalesSummaryModel
    {
        public string Code { get; set; }
        public int Gross { get; set; } 
        public int Commission { get; set; }
        public int BetAmount { get; set; }
        public int Payout { get; set; }
        public int BackPay { get; set; }
        public int NetAmount { get; set; }
        public string ReceiveBy { get; set; }
        public DateTime DrawDate { get; set; }
    }
}