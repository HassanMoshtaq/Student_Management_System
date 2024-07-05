using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW5
{
    public partial class Site : System.Web.UI.MasterPage
    {
        static string name;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["name"] != null)
            {
                name = Request.QueryString["name"];
                NameLbl.Text = name;
            }
            else
            {
                NameLbl.Text = name;
            }
            if (Session["lang"].ToString() == "en")
            {
                Page.Culture = Page.UICulture = "en-US";
            }
            else
            {
                Page.Culture = Page.UICulture = "tr-TR";
            }
        }


        protected void lnkChangeLanguage_Click(object sender, EventArgs e)
        {
            string cookieLang = "en";
            switch (lnkChangeLanguage.Text)
            {
                case "English":
                    // Convert to English:
                    cookieLang = "en";
                    break;
                case "Türkçe":
                    // Convert to Turkish:
                    cookieLang = "tr";
                    break;
                default:
                    cookieLang = "tr";
                    break;
            }

            // Save changes into Session:
            Session["lang"] = cookieLang;

            // Save changes into cookies:
            HttpCookie cookie = new HttpCookie("lang", cookieLang);
            cookie.Expires = DateTime.Now.AddDays(14);
            Response.Cookies.Add(cookie);

            // Reload the page to reflect the changes:
            Response.Redirect(Request.Url.ToString());
        }
    }
}