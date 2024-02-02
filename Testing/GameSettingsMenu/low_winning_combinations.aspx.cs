using HuarITSolutions.Class;
using HuarITSolutions.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace HuarITSolutions.GameSettingsMenu
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<ApprovedGames> listOfApprovedGames = new List<ApprovedGames>();
        List<LowWinningCombinations> listLowWinningCombinations = new List<LowWinningCombinations>();

        protected string selectedGame; protected void Page_Init(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {               
                listOfApprovedGames = sqlFunctions.getApprovedGames();

                foreach (var game in listOfApprovedGames)
                {
                    gameCode.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));

                    listLowWinningCombinations = sqlFunctions.getLowWinningCombinations(game.GameCode);

                    foreach (var games in listLowWinningCombinations)
                    {
                        TableRow row = new TableRow();

                        TableCell cell1 = new TableCell();
                        cell1.Text = games.GameCode;
                        row.Cells.Add(cell1);

                        TableCell cell2 = new TableCell();
                        cell2.Text = games.Combination;
                        row.Cells.Add(cell2);

                        // Add row
                        lowWinningTable.Rows.Add(row);
                    }
                }



            }

        }
        protected void gameCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Get the DropDownList 
            var ddl = (DropDownList)sender;

            // Check 
            if (ddl.SelectedValue != "0")
            {
                // remove ListItem with value "0" 
                ListItem selectGameCodeItem = ddl.Items.FindByValue("0");
                if (selectGameCodeItem != null)
                {
                    ddl.Items.Remove(selectGameCodeItem);
                }
            }
            //stored Id value
            selectedGame = gameCode.SelectedItem.Text;
            //int selectedGameCode;

            if (selectedGame != "0")
            {
              
            }
            else
            {
               

            }
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