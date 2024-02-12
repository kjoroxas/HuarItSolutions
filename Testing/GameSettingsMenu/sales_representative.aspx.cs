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
            

            if (!this.IsPostBack)
            {
                listOfSales = sqlFunctions.getSalesRepresentatives();
                foreach (var game in listOfSales)
                {
                    outletCode.Items.Add(new ListItem(game.UserName));
                }
            }
                defaultStateBtn();

            listOfSales = sqlFunctions.getSalesRepresentatives();
            foreach (var game in listOfSales)
            {
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
            setBtn.Visible = true;
            clearBtn.Visible = true;
            deleteBtn.Visible = true;
            newBtn.Visible = false;
            editBtn.Visible = true;
            cancelBtn.Visible = true; 
            outletCode.Visible = true;
            outletCodeText.Visible = false;
            outletCodeLabel.Visible = false;
            outletCodeTextBox.Visible = true;
            outletCodeTextBox.Text = outletCode.SelectedItem.Value;
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
            // Get the areaCode DropDownList and remove ListItem with value "0"
            ListItem selectAreaCodeItem = areaCode.Items.FindByValue("0");
            if (selectAreaCodeItem != null)
            {
                areaCode.Items.Remove(selectAreaCodeItem);
            }
            // Get the commissionType DropDownList and remove ListItem with value "0"
            ListItem selectCommissionTypeItem = commissionType.Items.FindByValue("0");
            if (selectCommissionTypeItem != null)
            {
                commissionType.Items.Remove(selectCommissionTypeItem);
            }

            // Get the backPayType DropDownList and remove ListItem with value "0"
            ListItem selectBackPayTypeItem = backPayType.Items.FindByValue("0");
            if (selectBackPayTypeItem != null)
            {
                backPayType.Items.Remove(selectBackPayTypeItem);
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
                fullName.Enabled = true;
                address.Enabled = true;
                areaCode.Enabled = true;
                mobileNumber.Enabled = true;
                password.Enabled = true;
                groupAccount.Enabled = true;
                commissionType.Enabled = true;
                backPayType.Enabled = true;
                location.Enabled = true;
                confirmPassword.Enabled = true;
                isActive.Enabled = true;

                selectedGameCode = selectedOutletCode;

                var gameDetails = listOfSales.FirstOrDefault(x => x.UserName == selectedGameCode);

                // Populate the TextBoxes
                outletCode.Text = gameDetails.UserName;
                deviceID.Text = gameDetails.DeviceId.ToString();
                fullName.Text = gameDetails.Name.ToString();
                address.Text = gameDetails.Address;
                areaCode.Text = gameDetails.Area;
                mobileNumber.Text = gameDetails.MobileNumber.ToString();
                password.Text = gameDetails.PassWord.ToString();
                confirmPassword.Text = gameDetails.PassWord.ToString();
                groupAccount.Text = gameDetails.GroupAccount.ToString();
                commissionType.Text = gameDetails.CommissionType.ToString();
                backPayType.Text = gameDetails.BackPayType.ToString();
                location.Text = gameDetails.Cluster.ToString();
                isActive.Checked = gameDetails.Active;

            }
            else
            {

                outletCode.Enabled = false;
                deviceID.Enabled = false;
                fullName.Enabled = false;
                address.Enabled = false;
                areaCode.Enabled = false;
                mobileNumber.Enabled = false;
                password.Enabled = false;
                groupAccount.Enabled = false;
                commissionType.Enabled = false;
                backPayType.Enabled = false;
                location.Enabled = false;
                confirmPassword.Enabled = false;
                isActive.Enabled = false;

                outletCode.SelectedIndex = 0;
                deviceID.Text = "";
                fullName.Text = "";
                address.Text = "";
                mobileNumber.Text = "";
                password.Text = "";
                confirmPassword.Text = "";
                groupAccount.Text = "";
                location.Text = "";

                areaCode.SelectedIndex = 0;
                commissionType.SelectedIndex = 0;
                backPayType.SelectedIndex = 0;
            }
        }
        protected void newBtnClick(object sender, EventArgs e)
        {
            setBtn.Visible = true;
            clearBtn.Visible = true;
            outletCodeTextBox.Visible = false;
            outletCode.Visible = false;
            outletCodeText.Visible = true;
            outletCodeLabel.Visible = true;
            outletCodeLabel1.Visible = false;
            cancelBtn.Visible = true;
            editBtn.Visible = false;
            deleteBtn.Visible = false;
            newBtn.Visible = false;
            saveBtn.Visible = true;
            isActive.Enabled = true;
            outletCode.Enabled = true;
            deviceID.Enabled = true;
            fullName.Enabled = true;
            address.Enabled = true;
            areaCode.Enabled = true;
            mobileNumber.Enabled = true;
            password.Enabled = true;
            groupAccount.Enabled = true;
            commissionType.Enabled = true;
            backPayType.Enabled = true;
            location.Enabled = true;
            confirmPassword.Enabled = true;


        }
        protected void saveBtnClick(object sender, EventArgs e)
        {
            sqlFunctions.saveSalesRepresentatives(outletCodeText.Text, fullName.Text, address.Text, areaCode.Text, mobileNumber.Text, password.Text,
                 isActive.Checked, groupAccount.Text, commissionType.Text, backPayType.Text, 1, location.Text);

            // Clear 

            outletCode.Items.Clear();

            // Get the list 
            listOfSales = sqlFunctions.getSalesRepresentatives();

            // Loop 
            foreach (var game in listOfSales)
            {
                outletCode.Items.Add(new ListItem(game.UserName));
            }

            // Find item with value "0"
            ListItem selectGameCodeItem = outletCode.Items.FindByValue("0");

            // If item with value "0" is not found, add it back 
            if (selectGameCodeItem == null)
            {
                outletCode.Items.Insert(0, new ListItem("Select Outlet Code", "0"));
            }

            // Set to 0
            outletCode.SelectedIndex = 0;

            // Get the list 
            listOfSales = sqlFunctions.getSalesRepresentatives();

            // Save header row
            TableRow headerRow = activeGame.Rows[0];

            // Clear
            activeGame.Rows.Clear();

            // Add the header 
            activeGame.Rows.Add(headerRow);

            // Loop
            foreach (var game in listOfSales)
            {
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

                // Add 
                activeGame.Rows.Add(row);
            }


            outletCodeText.Text = String.Empty;
            deviceID.Text = String.Empty;
            fullName.Text = String.Empty;
            address.Text = String.Empty;
            mobileNumber.Text = String.Empty;
            password.Text = String.Empty;
            confirmPassword.Text = String.Empty;
            groupAccount.Text = String.Empty;
            location.Text = String.Empty;
            outletCodeTextBox.Text = String.Empty;

            areaCode.SelectedIndex = 0;
            commissionType.SelectedIndex = 0;
            backPayType.SelectedIndex = 0;

            isActive.Checked = false;
        }
        protected void editBtnClick(object sender, EventArgs e)
        {
            sqlFunctions.saveSalesRepresentatives(outletCode.Text, fullName.Text, address.Text, areaCode.Text, mobileNumber.Text, password.Text,
                isActive.Checked, groupAccount.Text, commissionType.Text, backPayType.Text, 2, location.Text);

            outletCodeText.Text = String.Empty;
            deviceID.Text = String.Empty;
            fullName.Text = String.Empty;
            address.Text = String.Empty;
            mobileNumber.Text = String.Empty;
            password.Text = String.Empty;
            confirmPassword.Text = String.Empty;
            groupAccount.Text = String.Empty;
            location.Text = String.Empty;
            outletCodeTextBox.Text = String.Empty;

            areaCode.SelectedIndex = 0;
            commissionType.SelectedIndex = 0;
            backPayType.SelectedIndex = 0;

            isActive.Checked = false;
            ListItem selectGameCodeItem = outletCode.Items.FindByValue("0");
            if (selectGameCodeItem == null)
            {
                // Add the item with value "0" back to the dropdown list
                outletCode.Items.Insert(0, new ListItem("Select Outlet Code", "0"));
            }
            outletCode.SelectedIndex = 0;

            // Check if the item with value "0" is already in the dropdown list
            ListItem selectCommissionTypeItem = commissionType.Items.FindByValue("0");
            if (selectCommissionTypeItem == null)
            {
                // Add the item with value "0" back to the dropdown list
                commissionType.Items.Insert(0, new ListItem("Select Commission Type", "0"));
            }

            ListItem selectBackPayTypeItem = backPayType.Items.FindByValue("0");
            if (selectBackPayTypeItem == null)
            {
                backPayType.Items.Insert(0, new ListItem("Select Back Pay Type", "0"));
            }

            ListItem selectAreaCodeItem = areaCode.Items.FindByValue("0");
            if (selectAreaCodeItem == null)
            {
                areaCode.Items.Insert(0, new ListItem("Select Area Code", "0"));
            }

            // Set the selected value to "0"
            commissionType.SelectedValue = "0";
            backPayType.SelectedValue = "0";
            areaCode.SelectedValue = "0";
        }
        //protected void saveBtn(object sender, EventArgs e)
        //{
        //    sqlFunctions.saveSalesRepresentatives(outletCode.Text, fullName.Text, address.Text, areaCode.Text, mobileNumber.Text, password.Text, isActive.Checked, groupAccount.Text, commissionType.Text, backPayType.Text, 1, location.Text)
        //}
        protected void deleteBtnClick(object sender, EventArgs e)
        {
            sqlFunctions.deleteSalesRepresentatives(outletCode.Text);



            outletCodeText.Text = String.Empty;
            deviceID.Text = String.Empty;
            fullName.Text = String.Empty;
            address.Text = String.Empty;
            mobileNumber.Text = String.Empty;
            password.Text = String.Empty;
            confirmPassword.Text = String.Empty;
            groupAccount.Text = String.Empty;
            location.Text = String.Empty;
            outletCodeTextBox.Text = String.Empty;

            areaCode.SelectedIndex = 0;
            commissionType.SelectedIndex = 0;
            backPayType.SelectedIndex = 0;

            isActive.Checked = false;

            // Clear 

            outletCode.Items.Clear();

            // Get the list 
            listOfSales = sqlFunctions.getSalesRepresentatives();

            // Loop 
            foreach (var game in listOfSales)
            {
                outletCode.Items.Add(new ListItem(game.UserName));
            }

            // Find item with value "0"
            ListItem selectGameCodeItem = outletCode.Items.FindByValue("0");

            // If item with value "0" is not found, add it back 
            if (selectGameCodeItem == null)
            {
                outletCode.Items.Insert(0, new ListItem("Select Outlet Code", "0"));
            }

            // Set to 0
            outletCode.SelectedIndex = 0;

            // Get the list 
            listOfSales = sqlFunctions.getSalesRepresentatives();

            // Save header row
            TableRow headerRow = activeGame.Rows[0];

            // Clear
            activeGame.Rows.Clear();

            // Add the header 
            activeGame.Rows.Add(headerRow);

            // Loop
            foreach (var game in listOfSales)
            {
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

                // Add 
                activeGame.Rows.Add(row);
            }
        }
        protected void cancelBtnClick(object sender, EventArgs e)
        {
            defaultStateBtn();


            outletCodeText.Text = String.Empty;
            deviceID.Text = String.Empty;
            fullName.Text = String.Empty;
            address.Text = String.Empty;
            mobileNumber.Text = String.Empty;
            password.Text = String.Empty;
            confirmPassword.Text = String.Empty;
            groupAccount.Text = String.Empty;
            location.Text = String.Empty;
            outletCodeTextBox.Text = String.Empty;

            areaCode.SelectedIndex = 0;
            commissionType.SelectedIndex = 0;
            backPayType.SelectedIndex = 0;

            isActive.Checked = false;

            // Check if the item with value "0" already exists

            ListItem selectGameCodeItem = outletCode.Items.FindByValue("0");
            if (selectGameCodeItem == null)
            {
                // Add the item with value "0" back to the dropdown list
                outletCode.Items.Insert(0, new ListItem("Select Outlet Code", "0"));
            }
            outletCode.SelectedIndex = 0;
            // Check if the item with value "0" is already in the dropdown list
            ListItem selectCommissionTypeItem = commissionType.Items.FindByValue("0");
            if (selectCommissionTypeItem == null)
            {
                // Add the item with value "0" back to the dropdown list
                commissionType.Items.Insert(0, new ListItem("Select Commission Type", "0"));
            }

            ListItem selectBackPayTypeItem = backPayType.Items.FindByValue("0");
            if (selectBackPayTypeItem == null)
            {
                backPayType.Items.Insert(0, new ListItem("Select Back Pay Type", "0"));
            }

            ListItem selectAreaCodeItem = areaCode.Items.FindByValue("0");
            if (selectAreaCodeItem == null)
            {
                areaCode.Items.Insert(0, new ListItem("Select Area Code", "0"));
            }

            // Set the selected value to "0"
            commissionType.SelectedValue = "0";
            backPayType.SelectedValue = "0";
            areaCode.SelectedValue = "0";
        }

        private void defaultStateBtn()
        {
            setBtn.Visible = false;
            clearBtn.Visible = false;
            outletCodeLabel1.Visible = true;
            outletCodeTextBox.Visible = true;
            isActive.Enabled = false;
            newBtn.Visible = true;
            newBtn.Enabled = true;
            saveBtn.Visible = false;
            editBtn.Visible = false;
            deleteBtn.Visible = false;
            outletCode.Visible = true;
            outletCodeText.Visible = false;
            outletCodeLabel.Visible = false;
            cancelBtn.Visible = false;
            outletCode.Enabled = true;
            deviceID.Enabled = false;
            fullName.Enabled = false;
            address.Enabled = false;
            areaCode.Enabled = false;
            mobileNumber.Enabled = false;
            password.Enabled = false;
            groupAccount.Enabled = false;
            commissionType.Enabled = false;
            backPayType.Enabled = false;
            location.Enabled = false;
            confirmPassword.Enabled = false;
            outletCodeTextBox.Enabled = false;

            //outletCode.Text = "";
            //deviceID.Text = "";
            //fullName.Text = "";
            //address.Text = "";
            //areaCode.Text = "";
            //mobileNumber.Text = "";
            //password.Text = "";
            //confirmPassword.Text = "";
            //groupAccount.Text = "";
            //commissionType.Text = "";
            //backPayType.Text = "";
            //location.Text = "";
            //outletCodeTextBox.Text = "";
        }






    }
}