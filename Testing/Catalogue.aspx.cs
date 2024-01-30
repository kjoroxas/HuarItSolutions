using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HuarITSolutions
{
    public partial class Catalogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Filesredirectiom(object sender, EventArgs e)
        {
            Response.Redirect("Specificfile.aspx");
        }

        protected void Salesredirectiom(object sender, EventArgs e)
        {
            Response.Redirect("Specificsales.aspx");
        }
    }
}