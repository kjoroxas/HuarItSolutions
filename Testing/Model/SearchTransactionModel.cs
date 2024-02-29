using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuarITSolutions.Model
{
    public class SearchTransactionModel
    {
        public string ReceiveBy { get; set; }
        public DateTime DrawDate { get; set; }
        public string smsid { get; set; }
        public string Code { get; set; }
        public string Number { get; set; }
        public int Amount { get; set; }
        public DateTime DateApply { get; set; }
        public string DeletedBy { get; set; }
        public DateTime DeletedOn { get; set; }
    }
}