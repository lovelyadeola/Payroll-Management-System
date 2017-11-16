using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "Admin")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button del = (Button)e.Row.Cells[4].Controls[0];
                del.OnClientClick = "if(!confirm('Are you sure you want to delete this Employee?')) return;";
            }
        }
    }
}