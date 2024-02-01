using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using HuarITSolutions.Class;
using HuarITSolutions.Model;

namespace HuarITSolutions
{
    public partial class combinations : System.Web.UI.Page
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
            //sqlFunctions.saveControlledCombination(/*place here the GameCode ID choosen*/ ,combination.Text, bLimit.Text);
        }

        protected void deleteBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.deleteControllerCombination(/*place here the GameCode ID choosen*/);
        }
        protected void viewBtn_click(object sender, EventArgs e)
        {
            //for table list

            //var controlledCombinationView = sqlFunctions.getControlledCombinations(/* place here the GameCode Id*/);

            //code the foreach statement here, to display the data
        }

    }
}