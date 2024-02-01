using Newtonsoft.Json;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;
using HuarITSolutions.Class;
using HuarITSolutions.Model;
using System.Reflection.Emit;


namespace HuarITSolutions
{    
    public partial class active2 : Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<ApprovedGames> listOfApprovedGames = new List<ApprovedGames>();
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            listOfApprovedGames = sqlFunctions.getApprovedGames();

            foreach (var game in listOfApprovedGames)
            {
                activeGames.Items.Add(new ListItem(game.GameCode, game.Id.ToString()));
            }

        }

        protected void gameCode_SelectedIndexChanged(object sender, EventArgs e)
        {
            //stored Id value
            string selectedGameId = activeGames.SelectedItem.Value;

        }
        protected void viewBtn_click(object sender, EventArgs e)
        {
            ////var listOfApprovedGames = sqlFunctions.getApprovedGames();

            //foreach (var game in listOfApprovedGames)
            //{
            //    TableRow row = new TableRow();

            //    TableCell cell1 = new TableCell();
            //    cell1.Text = game.GameCode;
            //    row.Cells.Add(cell1);

            //    TableCell cell2 = new TableCell();
            //    cell2.Text = game.PrintDescription;
            //    row.Cells.Add(cell2);



            //    // Add row
            //    activeGame.Rows.Add(row);
            //}
        }
        
        protected void saveBtn_click(object sender, EventArgs e)
        {
            //the GameCode and PrintDescription is not required to change

            sqlFunctions.updateGameSettingsMenu(gameCode.Text, printCode.Text, highBet.Text, lowBet.Text, lowBetLimit.Text, highBetLimit.Text,
                commAdmin.Text, commCoor.Text, adPay.Text, coorPay.Text);

           
        }
    }
}