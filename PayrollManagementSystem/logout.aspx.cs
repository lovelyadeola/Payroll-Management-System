using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem
{
    public partial class logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String logout_msg;
            if (Request.QueryString["m"] != null)
            {
                logout_msg = Server.UrlEncode(Request.QueryString["m"].ToString());
            }
            else
            {
                logout_msg = Server.UrlEncode("You Have Logged Out !");
            }
            Session.Abandon();
            Response.Redirect("log.aspx?msg=" + logout_msg);

        }
    }
}