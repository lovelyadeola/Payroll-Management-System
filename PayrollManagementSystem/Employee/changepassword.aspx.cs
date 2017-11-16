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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "Employee")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
        }

        protected void ChangePasswordPushButton_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                Response.Redirect("home.aspx");
            }
            else if (e.CommandName == "ChangePassword")
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                String newpass;
                SqlCommand cmd = new SqlCommand();
                
                newpass = NewPassword.Text;
                cmd.Connection = con;
                cmd.CommandText = "UPDATE Login SET password = @newpassword WHERE Name=@username";
                cmd.Parameters.AddWithValue("@newpassword", newpass);
                cmd.Parameters.AddWithValue("@username", Session["username"]);
                con.Open();
                int rows_affected = cmd.ExecuteNonQuery();
                if (rows_affected > 0)
                {
                    cmd.CommandText = "UPDATE Employee SET password = (SELECT password FROM Login WHERE Name = @username) WHERE username = @username";
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                       
                        message_lbl.Text = "password changed successfully";
                        message_lbl.Visible = true;
                    }
                    else
                    {
                     
                        message_lbl.Text = "password change failed";
                        message_lbl.Visible = true;

                    }
                }
                con.Close();
            }
        }
    }
}