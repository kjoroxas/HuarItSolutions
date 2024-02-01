using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace HuarITSolutions
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            if (HttpContext.Current.User != null)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    if (HttpContext.Current.User.Identity is FormsIdentity)
                    {
                        FormsIdentity formID = (FormsIdentity)HttpContext.Current.User.Identity;
                        FormsAuthenticationTicket ticket = formID.Ticket;

                        //get stored user data, in this case "user role"
                        string[] roles = new string[1] { ticket.UserData };
                        HttpContext.Current.User = new GenericPrincipal(formID, roles);
                    }
                }
            }
        }
    }
}