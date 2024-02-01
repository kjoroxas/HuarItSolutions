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
        List<ControlledCombinations> listofControlledCombinations = new List<ControlledCombinations>();
        protected string selectedGameId;

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

            }

        }

        protected void saveBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.saveControlledCombination(/*place here the GameCode ID choosen*/ ,combination.Text, bLimit.Text);
        }

        protected void deleteBtn_click(object sender, EventArgs e)
        {
            //sqlFunctions.deleteControllerCombination(/*place here the GameCode ID choosen*/);
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
            selectedGameId = gameCode.SelectedItem.Value;
            int selectedGameCode;
            if (selectedGameId != "0")


            {
                //  JavaScript function to enable the TextBox
                combination.Enabled = true;
                bLimit.Enabled = true;

                selectedGameCode = int.Parse(selectedGameId);

                var gameDetails = listofControlledCombinations[selectedGameCode];

                // Populate the TextBoxes
                combination.Text = gameDetails.Combination;
                bLimit.Text = gameDetails.BetLimit.ToString();



            }
            else
            {
                // JavaScript function to disable the TextBox

                combination.Enabled = false;
                bLimit.Enabled = false;


                combination.Text = "";
                bLimit.Text = "";

            }
        }
    }
}