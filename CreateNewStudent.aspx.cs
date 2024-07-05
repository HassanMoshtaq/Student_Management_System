using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HW5
{
    public partial class CreateNewStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //adsStudents.InsertParameters["BirthDay"].DefaultValue = "12.11.1987";
                int numRec = adsStudents.Insert();

                if (numRec == 0)
                    Label1.Visible = true;
                else
                    Response.Redirect("Students.aspx");
            }
        }
    }
}