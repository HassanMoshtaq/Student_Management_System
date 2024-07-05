using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW5
{
    public partial class About : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected override void InitializeCulture()
        {
            base.InitializeCulture();

            if (Session["lang"].ToString() == "en")
            {
                Page.Culture = Page.UICulture = "en-US";
            }
            else
            {
                Page.Culture = Page.UICulture = "tr-TR";
            }
        }
    }
}