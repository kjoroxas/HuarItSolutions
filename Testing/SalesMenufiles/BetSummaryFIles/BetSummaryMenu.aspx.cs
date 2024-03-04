using HuarITSolutions.Class;
using HuarITSolutions.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuarITSolutions.SalesMenufiles.BetSummaryFIles
{
    public partial class BetSummary1 : System.Web.UI.Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<GameCodeModel> listOfGameCode = new List<GameCodeModel>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var listOfGameCode = sqlFunctions.getCurrentGameCode();

            foreach (var game in listOfGameCode)
            {
                gameCode.Items.Add(new ListItem(game.GameCode));
            }

        }

        protected void gameCode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    }
}