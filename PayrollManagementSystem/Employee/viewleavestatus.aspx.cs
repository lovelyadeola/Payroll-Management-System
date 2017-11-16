using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem.Employee
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Employee")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            // And you respective cell's value
            //TextBox1.Text = row.Cells[].Text;

        }
    }
}