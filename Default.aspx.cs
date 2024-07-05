using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using System.Text;

namespace HW5
{
    public partial class Default : System.Web.UI.Page
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

        protected void Get_JsonBTN_Click(object sender, EventArgs e)
        {
            OleDbConnection conn = new OleDbConnection();

            string connectionString = WebConfigurationManager.ConnectionStrings["DepartmentConnectionString"].ConnectionString;
            //string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\Department.mdb";


            conn.ConnectionString = connectionString;

            try
            {
                conn.Open();

                string query = "SELECT * FROM [Students]";

                OleDbCommand cmd = new OleDbCommand(query, conn);

                DataTable table1 = new DataTable();
                OleDbDataAdapter a = new OleDbDataAdapter(cmd);
                a.Fill(table1);
                string jsonGenerated = DataTableToJSONWithStringBuilder(table1);

                System.IO.File.WriteAllText(Server.MapPath("~/JsonData/jsondata.txt"), jsonGenerated);

                txtJson.Text = jsonGenerated.ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        public string DataTableToJSONWithStringBuilder(DataTable table)
        {
            var JSONString = new StringBuilder();
            if (table.Rows.Count > 0)
            {
                JSONString.Append("[");
                for (int i = 0; i < table.Rows.Count; i++)
                {
                    JSONString.Append("{");
                    for (int j = 0; j < table.Columns.Count; j++)
                    {
                        if (j < table.Columns.Count - 1)
                        {
                            JSONString.Append("\"" + table.Columns[j].ColumnName.ToString() + "\":" + "\"" + table.Rows[i][j].ToString() + "\",");
                        }
                        else if (j == table.Columns.Count - 1)
                        {
                            JSONString.Append("\"" + table.Columns[j].ColumnName.ToString() + "\":" + "\"" + table.Rows[i][j].ToString() + "\"");
                        }
                    }
                    if (i == table.Rows.Count - 1)
                    {
                        JSONString.Append("}");
                    }
                    else
                    {
                        JSONString.Append("},");
                    }
                }
                JSONString.Append("]");
            }
            return JSONString.ToString();
        }

        protected void json2GridBTN_Click(object sender, EventArgs e)
        {
            string myDynamicJSON = "";

            try
            {
                myDynamicJSON = System.IO.File.ReadAllText(Server.MapPath("~/JsonData/jsondata.txt"));


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            //Using dynamic keyword with JsonConvert.DeserializeObject, here you need to import Newtonsoft.Json  
            dynamic myObject = JsonConvert.DeserializeObject(myDynamicJSON);

            //Binding gridview from dynamic object   
            GridView1.DataSource = myObject;
            GridView1.DataBind();
        }
    }
}