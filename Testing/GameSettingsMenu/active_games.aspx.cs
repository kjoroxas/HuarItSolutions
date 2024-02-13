using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using HuarITSolutions.Class;
using HuarITSolutions.Model;


namespace HuarITSolutions
{    
    public partial class Active : Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<ApprovedGamesModel> listOfApprovedGames = new List<ApprovedGamesModel>();
        protected string selectedGameId;
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
                saveModal.Enabled = false;
                gameCode.Enabled = false;
                printCode.Enabled = false;
                activeGameCheckbox.Enabled = false;
                lowBet.Enabled = false;
                lowBetLimit.Enabled = false;
                highBet.Enabled = false;
                highBetLimit.Enabled = false;
                AdminCommission.Enabled = false;
                AdminPay.Enabled = false;
                CoorCommission.Enabled = false;
                coorPay.Enabled = false;

                listOfApprovedGames = sqlFunctions.getApprovedGames();

                foreach (var game in listOfApprovedGames)
                {
                    activeGames.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));
                }

            }
            listOfApprovedGames = sqlFunctions.getApprovedGames();

            foreach (var game in listOfApprovedGames)
            {
                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = game.GameCode;
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = game.PrintDescription;
                row.Cells.Add(cell2);



                // Add row
                activeGame.Rows.Add(row);
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
            selectedGameId = activeGames.SelectedItem.Value;
            int selectedGameCode;
            // Enable or disable  TextBox 
            if (selectedGameId != "0")

                
            {
                saveModal.Enabled = true;
                //  JavaScript function to enable the TextBox
                gameCode.Enabled = false;
                printCode.Enabled = false;
                activeGameCheckbox.Enabled = true;
                lowBet.Enabled = true;
                lowBetLimit.Enabled = true;
                highBet.Enabled = true;
                highBetLimit.Enabled = true;
                AdminCommission.Enabled = true;
                AdminPay.Enabled = true;
                CoorCommission.Enabled = true;
                coorPay.Enabled = true;

                selectedGameCode = int.Parse(selectedGameId);

                var gameDetails = listOfApprovedGames.FirstOrDefault(x => x.Id == selectedGameCode);

                // Populate the TextBoxes
                gameCode.Text = gameDetails.GameCode;
                printCode.Text = gameDetails.PrintDescription;
                lowBet.Text = gameDetails.WinningValueLow.ToString();
                lowBetLimit.Text = gameDetails.LowEndingLimit.ToString();
                highBet.Text = gameDetails.WinningValueHigh.ToString();
                highBetLimit.Text = gameDetails.HighEndingLimit.ToString();
                AdminCommission.Text = gameDetails.CommissionA.ToString();
                AdminPay.Text = gameDetails.BackPayTypeA.ToString();
                CoorCommission.Text = gameDetails.CommissionB.ToString();
                coorPay.Text = gameDetails.BackPayTypeB.ToString();


            }
                else
            {
                saveModal.Enabled = false;
                // JavaScript function to disable the TextBox
                gameCode.Enabled = false;
                printCode.Enabled = false;
                activeGameCheckbox.Enabled = false;
                lowBet.Enabled = false;
                lowBetLimit.Enabled = false;
                highBet.Enabled = false;
                highBetLimit.Enabled = false;
                AdminCommission.Enabled = false;
                AdminPay.Enabled = false;
                CoorCommission.Enabled = false;
                coorPay.Enabled = false;

                gameCode.Text = "";
                printCode.Text = "";
                lowBet.Text = "";
                lowBetLimit.Text = "";
                highBet.Text = "";
                highBetLimit.Text = "";
                AdminCommission.Text = "";
                AdminPay.Text = "";
                CoorCommission.Text = "";
                coorPay.Text = "";
            }
        }
        
        protected void saveBtn_click(object sender, EventArgs e)
        {
            //the GameCode and PrintDescription is not required to change

            sqlFunctions.updateGameSettingsMenu(gameCode.Text, printCode.Text, highBet.Text, lowBet.Text, lowBetLimit.Text, highBetLimit.Text,
                AdminCommission.Text, CoorCommission.Text, AdminPay.Text, coorPay.Text);

           
        }
    }
}