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
        List<ApprovedGames> listOfApprovedGames = new List<ApprovedGames>();
        protected string selectedGameId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                listOfApprovedGames = sqlFunctions.getApprovedGames();

                foreach (var game in listOfApprovedGames)
                {
                    gameCode.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));
                }
            }
           
        }
        protected void gameCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            //stored Id value
            selectedGameId = gameCode.SelectedItem.Value;

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
            //code the foreach statement here, to display the data
            var controlledCombinationView = sqlFunctions.getControlledCombinations(selectedGameId);

            //code the foreach statement here, to display the data
            foreach (var combi in controlledCombinationView)
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = combi.GameCode;
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = combi.Combination; // Assuming Combination is a property of combi
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = combi.BetLimit.ToString(); // Assuming BetLimit is a property of combi
                row.Cells.Add(cell3);

                // Add row to CombinationsTab
                CombinationsTab.Rows.Add(row);
            }
        }

    }
}