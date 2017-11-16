using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.UI;

namespace PayrollManagementSystem
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            ScriptResourceDefinition myDef = new ScriptResourceDefinition();
            myDef.Path = "~/scripts/jquery-3.1.0.min.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myDef);
            Application["prev_id"] = 1;
           


        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application["prev_id"] = Int32.Parse(Application["prev_id"].ToString()) + 1;
            Session["login"] = "guest";

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
            Session["login"] = "guest";
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}