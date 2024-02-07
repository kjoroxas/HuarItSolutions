using HuarITSolutions.Class;
using HuarITSolutions.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Css.Ast;

namespace HuarITSolutions
{
    public partial class LowWinning : System.Web.UI.Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<ApprovedGamesModel> listOfApprovedGames = new List<ApprovedGamesModel>();
        List<LowWinningCombinationsModel> listLowWinningCombinations = new List<LowWinningCombinationsModel>();

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
                Combination.Enabled = false;
                listOfApprovedGames = sqlFunctions.getApprovedGames();

                foreach (var game in listOfApprovedGames)
                {
                    gameCode.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));

                }
            }

            selectedGame = gameCode.SelectedItem.Text;
            listLowWinningCombinations = sqlFunctions.getLowWinningCombinations(selectedGame);
            listOfApprovedGames = sqlFunctions.getApprovedGames();
            foreach (var game in listOfApprovedGames)
            {
                var gameCode = game.GameCode;
                var test = sqlFunctions.getLowWinningCombinations(gameCode);

                foreach (var games in test)
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
                Combination.Enabled = true;
                var gameDetails = listLowWinningCombinations.FirstOrDefault(x => x.GameCode == selectedGame);
                if (gameDetails != null)
                {
                    Combination.Text = gameDetails.Combination;

                }
                else
                {
                    Combination.Text = "";
                }
            }
            else
            {
                Combination.Enabled = false;

            }
        }


        protected void saveBtn_click(object sender, EventArgs e)
        {
            sqlFunctions.saveLowWinCombination(selectedGame, Combination.Text);

            lowWinningTable.Rows.Clear();

            listOfApprovedGames = sqlFunctions.getApprovedGames();
            foreach (var game in listOfApprovedGames)
            {
                var gameCode = game.GameCode;
                var test = sqlFunctions.getLowWinningCombinations(gameCode);

                foreach (var games in test)
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

        protected void deleteBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.deleteLowWinningCombination(/*place here the GameCode ID choosen*/);
        }

    }
}