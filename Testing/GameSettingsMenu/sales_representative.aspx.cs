using HuarITSolutions.Class;
using HuarITSolutions.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace HuarITSolutions
{
    public partial class SalesRepresentative : Page
    {
        public static SQLFunctions sqlFunctions = new SQLFunctions();
        List<SalesRepresentativeModel> listOfSales = new List<SalesRepresentativeModel>();
        protected string selectedOutletCode;

        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            listOfSales = sqlFunctions.getSalesRepresentatives();

            if (!this.IsPostBack)
            {
                outletCode.Enabled = true;
                deviceID.Enabled = false;
                address.Enabled = false;
                areaCode.Enabled = false;
                mobileNumber.Enabled = false;
                password.Enabled = false;
                groupAccount.Enabled = false;
                commisionType.Enabled = false;
                backPayType.Enabled = false;
                location.Enabled = false;
                confirmPassword.Enabled = false;

            }

            foreach (var game in listOfSales)
            {
                outletCode.Items.Add(new ListItem(game.UserName));

                TableRow row = new TableRow();

                TableCell cell1 = new TableCell();
                cell1.Text = game.UserName;
                row.Cells.Add(cell1);

                TableCell cell2 = new TableCell();
                cell2.Text = game.Name.ToString();
                row.Cells.Add(cell2);

                TableCell cell3 = new TableCell();
                cell3.Text = game.GroupAccount.ToString();
                row.Cells.Add(cell3);
                // Add row
                activeGame.Rows.Add(row);
            }
        }

        protected void outletCode_SelectedIndexChanged(object sender, EventArgs e)
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
            selectedOutletCode = outletCode.SelectedItem.Value;

            string selectedGameCode;
            // Enable or disable  TextBox 
            if (selectedOutletCode != "0")


            {
                //  JavaScript function to enable the TextBox
                outletCode.Enabled = true;
                deviceID.Enabled = true;
                address.Enabled = true;
                areaCode.Enabled = true;
                mobileNumber.Enabled = true;
                password.Enabled = true;
                groupAccount.Enabled = true;
                commisionType.Enabled = true;
                backPayType.Enabled = true;
                location.Enabled = true;
                confirmPassword.Enabled = true;

                selectedGameCode = selectedOutletCode;

                var gameDetails = listOfSales.FirstOrDefault(x => x.UserName == selectedGameCode);

                // Populate the TextBoxes
                outletCode.Text = gameDetails.UserName;
                deviceID.Text = gameDetails.DeviceId.ToString();
                address.Text = gameDetails.Address;
                areaCode.Text = gameDetails.Area;
                mobileNumber.Text = gameDetails.MobileNumber.ToString();
                password.Text = gameDetails.PassWord.ToString();
                confirmPassword.Text = gameDetails.PassWord.ToString();
                groupAccount.Text = gameDetails.GroupAccount.ToString();
                commisionType.Text = gameDetails.CommissionType.ToString();
                backPayType.Text = gameDetails.BackPayType.ToString();
                location.Text = gameDetails.Cluster.ToString();


            }
            else
            {
                // JavaScript function to disable the TextBox
                outletCode.Enabled = false;
                deviceID.Enabled = false;
                address.Enabled = false;
                areaCode.Enabled = false;
                mobileNumber.Enabled = false;
                password.Enabled = false;
                groupAccount.Enabled = false;
                commisionType.Enabled = false;
                backPayType.Enabled = false;
                location.Enabled = false;
                confirmPassword.Enabled = false;

                outletCode.Text = "";
                deviceID.Text = "";
                address.Text = "";
                areaCode.Text = "";
                mobileNumber.Text = "";
                password.Text = "";
                confirmPassword.Text = "";
                groupAccount.Text = "";
                commisionType.Text = "";
                backPayType.Text = "";
                location.Text = "";
            }
        }

    }
}