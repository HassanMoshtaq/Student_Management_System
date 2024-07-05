using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace HW5
{
    public partial class Json2Grid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Random json string, No fix number of columns or rows and no fix column name.   
            string myDynamicJSON = "[{'Member ID':'00012','First Name':'Vicki','Last Name':'Jordan','Registered Email':'vicki.j @tacinc.com.au','Mobile':'03 6332 3800','MailSuburb':'','MailState':'','MailPostcode':'','Engagement':'attended an APNA event in the past and ventured onto our online education portal APNA Online Learning','Group':'Non-member'},{'Member ID':'15072','First Name':'Vicki','Last Name':'Jordan','Registered Email':'vicki.j @tacinc.com.au','Mobile':'03 6332 3800','MailSuburb':'','MailState':'','MailPostcode':'','Engagement':'attended an APNA event in the past and ventured onto our online education portal APNA Online Learning','Group':'Non-member'}]";

            //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
            dynamic myObject = JsonConvert.DeserializeObject(myDynamicJSON);

            //Binding gridview from dynamic object   
            grdJSON2Grid.DataSource = myObject;
            grdJSON2Grid.DataBind();

            //Using DataTable with JsonConvert.DeserializeObject, here you need to import using System.Data;  
            DataTable myObjectDT = JsonConvert.DeserializeObject<DataTable>(myDynamicJSON);

            //Binding gridview from dynamic object   
            grdJSON2Grid2.DataSource = myObjectDT;
            grdJSON2Grid2.DataBind();
        }
    }
}