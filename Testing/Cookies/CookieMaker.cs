using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace HuarITSolutions
{
    public class CookieMaker
    {

        public CookieMaker()
        {

        }

        public HttpCookie CreateCookie(bool remembered, string user, string role)
        {
            DateTime dateExpired;
            bool persistent = false;

            //if there's rememberMe
            //if (remembered)
            //{
            //    dateExpired = DateTime.Now.AddMinutes(1);
            //    persistent = true;
            //}
            //else
            //{
            //    dateExpired = DateTime.Now.AddMinutes(1);
            //}

            dateExpired = DateTime.Now.AddDays(1);
            persistent = true;

            FormsAuthenticationTicket frmTicket = new FormsAuthenticationTicket(1, user, DateTime.Now, dateExpired, persistent, role, FormsAuthentication.FormsCookiePath);

            //encrypt the created ticket.
            string encryptTicket = FormsAuthentication.Encrypt(frmTicket);

            //create a new cookie using encripted ticket
            HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptTicket);

            //set date for cookie expiration if check-box has checked.
            if (frmTicket.IsPersistent)
                cookie.Expires = frmTicket.Expiration;

            return cookie;
        }
    }
}