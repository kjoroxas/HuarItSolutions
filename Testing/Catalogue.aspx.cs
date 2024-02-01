using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuarITSolutions
{
    public partial class Catalogue : Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx");
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //var sssss = Roles.IsUserInRole("Administrators");
           // var user = HttpContext.Current.User.Identity.Name;
            
        }

        protected void Filesredirectiom(object sender, EventArgs e)
        {
            Response.Redirect("GameSettings.aspx");
        }

        protected void Salesredirectiom(object sender, EventArgs e)
        {
            Response.Redirect("Sales.aspx");
        }

        protected void LogOutButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}