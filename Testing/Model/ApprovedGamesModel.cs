using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuarITSolutions.Model
{
    public class ApprovedGamesModel
    {
        public int Id { get; set; }
        public string GameCode { get; set; }
        public string PrintDescription { get; set; }
        public int TextFieldCount { get; set; }
        public int MaxCombi { get; set; }
        public int CombiLength { get; set; }
        public bool IsActive { get; set; }
        public bool IsLocal { get; set; }
        public DateTime? DateTimeCreadted { get; set; }
        public decimal WinningValueHigh { get; set; }
        public decimal WinningValueLow { get; set; }
        public decimal CommissionA { get; set; }
        public decimal CommissionB { get; set; }
        public int LowEndingLimit { get; set; }
        public int HighEndingLimit { get; set; }
        public decimal BackPayTypeA { get; set; }
        public decimal BackPayTypeB { get; set; }
    }
}