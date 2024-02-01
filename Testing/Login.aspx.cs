using HuarITSolutions.Model;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Security.Policy;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.Activities;

namespace HuarITSolutions
{
    public partial class Login : Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["DBConnectionString"].ConnectionString;
              
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbutton_Click(object sender, EventArgs e)
        {
            try
            {
                HttpCookie mycookie;
                CookieMaker cookie = new CookieMaker();

                //set a role to the user if it's authenticated, since we don't have roles in DB, the role was pre-defined
                string role = "Admin";

                if (role != string.Empty)
                {
                    mycookie = cookie.CreateCookie(true, emailfield.Text, role);
                    
                    if (cookie != null)
                    {
                        if (AuthenticateUser(emailfield.Text, passfield.Text))
                        {
                            FormsAuthentication.RedirectFromLoginPage(emailfield.Text, false);

                            Response.Cookies.Add(mycookie);
                            Response.Redirect("Catalogue.aspx", true);
                        }
                       
                    }
                }
                //else
                //lblError.Text = "Invalid username or password.";
            }
            catch (Exception ex) { }


          

            //if (reader.Read())
            //{
            //    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, emailfield.Text, DateTime.Now, DateTime.Now.AddMinutes(2880), false, "Administrators", FormsAuthentication.FormsCookiePath);
            //    string hashTag = FormsAuthentication.Encrypt(ticket);
            //    HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, hashTag);

            //    if (ticket.IsPersistent)
            //    {
            //        cookie.Expires = ticket.Expiration;
            //    }
            //    Response.Cookies.Add(cookie);

            //    var claims = new List<Claim>();=
            //    //Response.Redirect(FormsAuthentication.GetRedirectUrl("Catalogue.aspx", false));
            //    //Response.Redirect(FormsAuthentication.GetRedirectUrl(emailfield.Text, false));

            //    Response.Redirect("Catalogue.aspx");
            //}
            //else
            //{
            //    emailVaildator.ErrorMessage = "Please enter email";
            //}


        }


        private bool AuthenticateUser(string username, string password)
        {
            byte[] bytes = Encoding.UTF8.GetBytes(password);

            SHA256Managed hashstring = new SHA256Managed();
            byte[] hash = hashstring.ComputeHash(bytes);
            string hashString = string.Empty;

            foreach (byte x in hash)
            {
                hashString += String.Format("{0:x2}", x);
            }

            SqlConnection conn = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("Select * From fnValidateAccount(@user,@pass)", conn);
            conn.Open();
            cmd.Parameters.AddWithValue("@user", username);
            cmd.Parameters.AddWithValue("@pass", hashString);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                return true;
            else
                return false;
        }

    }

}
