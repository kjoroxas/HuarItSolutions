using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HuarITSolutions.Model
{
    public class ControlledCombinationsModel
    {
        public int Id { get; set; }
        public string GameCode { get; set; }
        public string Combination { get; set; }
        public decimal BetLimit { get; set; }
    }
}