using HuarITSolutions.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuarITSolutions.specifiles
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();

        protected void Page_Load(object sender, EventArgs e)
        {
            //for dropdown list

            var listOfApprovedGames = sqlFunctions.getApprovedGames();

            //mag foreach ka dito para mapalabas mo sa drop down ung game codes.
        }

        protected void saveBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.saveLowWinCombination(/*place here the GameCode ID choosen*/ ,combination.Text, bLimit.Text);
        }

        protected void deleteBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.deleteLowWinningCombination(/*place here the GameCode ID choosen*/);
        }
        protected void viewBtn_click(object sender, EventArgs e)
        {
            //for table list

            //var lowWinningCombinationView = sqlFunctions.getLowWinningCombinations(/* place here the GameCode Id*/);

            //code the foreach statement here, to display the data
        }
    }
}