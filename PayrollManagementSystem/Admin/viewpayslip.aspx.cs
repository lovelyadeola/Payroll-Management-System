using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem.Admin
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Admin")
            {
                Session.Abandon(); ;
                Response.Redirect("../log.aspx");
            }

        }
    }
}