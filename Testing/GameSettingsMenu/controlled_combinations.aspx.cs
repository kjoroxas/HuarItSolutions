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
using WebGrease.Css.Ast;

namespace HuarITSolutions
{
    public partial class combinations : System.Web.UI.Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<ApprovedGames> listOfApprovedGames = new List<ApprovedGames>();
        List<ControlledCombinations> listofControlledCombinations = new List<ControlledCombinations>();


        protected string selectedGame;
        protected void Page_Init(object sender, EventArgs e)
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
                combination.Enabled = false;
                bLimit.Enabled = false;

                listOfApprovedGames = sqlFunctions.getApprovedGames();

                foreach (var game in listOfApprovedGames)
                {
                    gameCode.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));

                    
                }

               
            }
            selectedGame = gameCode.SelectedItem.Text;
            listofControlledCombinations = sqlFunctions.getControlledCombinations(selectedGame);
            listOfApprovedGames = sqlFunctions.getApprovedGames();
            foreach (var game in listOfApprovedGames)
            {
                var gameCode = game.GameCode;
                var test = sqlFunctions.getControlledCombinations(gameCode);

                foreach (var games in test)
                {
                    TableRow row = new TableRow();

                    TableCell cell1 = new TableCell();
                    cell1.Text = games.GameCode;
                    row.Cells.Add(cell1);

                    TableCell cell2 = new TableCell();
                    cell2.Text = games.Combination;
                    row.Cells.Add(cell2);

                    TableCell cell3 = new TableCell();
                    cell3.Text = games.BetLimit.ToString();
                    row.Cells.Add(cell3);

                    // Add row
                    CombinationsTab.Rows.Add(row);
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
                //  JavaScript function to enable the TextBox
                combination.Enabled = true;
                bLimit.Enabled = true;

                var gameDetails = listofControlledCombinations.FirstOrDefault(x => x.GameCode == selectedGame);
                if(gameDetails != null)
                {
                    combination.Text = gameDetails.Combination;
                    bLimit.Text = gameDetails.BetLimit.ToString();

                }
                else
                {
                    combination.Text = "";
                    bLimit.Text = "";
                }
                //selectedGameCode = int.Parse(selectedGame);
                //var gameDetails = listofControlledCombinations.FirstOrDefault(x => x.Id == selectedGameCode);



                // Populate the TextBoxes
                //combination.Text = gameDetails.Combination;
                //bLimit.Text = gameDetails.BetLimit.ToString();
            }
            else
            {
                // JavaScript function to disable the TextBox
               

                combination.Enabled = false;
                //combination.Text = 
                bLimit.Enabled = false;

                combination.Text = "";
                bLimit.Text = "";

            }
        }
        protected void saveBtn_click(object sender, EventArgs e)
        {
            sqlFunctions.saveControlledCombination(selectedGame, combination.Text, bLimit.Text);

            CombinationsTab.Rows.Clear();

            listOfApprovedGames = sqlFunctions.getApprovedGames();
            foreach (var game in listOfApprovedGames)
            {
                var gameCode = game.GameCode;
                var test = sqlFunctions.getControlledCombinations(gameCode);

                foreach (var games in test)
                {
                    TableRow row = new TableRow();

                    TableCell cell1 = new TableCell();
                    cell1.Text = games.GameCode;
                    row.Cells.Add(cell1);

                    TableCell cell2 = new TableCell();
                    cell2.Text = games.Combination;
                    row.Cells.Add(cell2);

                    TableCell cell3 = new TableCell();
                    cell3.Text = games.BetLimit.ToString();
                    row.Cells.Add(cell3);

                    // Add row
                    CombinationsTab.Rows.Add(row);
                }
            }
        }

        protected void deleteBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.deleteControllerCombination(/*place here the GameCode ID choosen*/);
        }

    }
}