using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace HW5
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            // Code that runs when a new session is started
            HttpCookie cookie = Request.Cookies["lang"];
            if (cookie == null)
            {
                cookie = new HttpCookie("lang", "tr");
                cookie.Expires = DateTime.Now.AddDays(14);
                Response.Cookies.Add(cookie);
            }
            switch (cookie.Value)
            {
                case "tr":
                    Session["lang"] = "tr";
                    break;
                case "en":
                    Session["lang"] = "en";
                    break;
                default:
                    cookie = new HttpCookie("lang", "tr");
                    cookie.Expires = DateTime.Now.AddDays(14);
                    Response.Cookies.Add(cookie);
                    break;
            }
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}