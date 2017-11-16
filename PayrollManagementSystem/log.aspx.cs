using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() == "Admin")
            {
                Response.Redirect("Admin/home.aspx");
            }
            else if (Session["login"].ToString() == "Employee")
            {
                Response.Redirect("Employee/home.aspx");
            }
            if (Request.QueryString["msg"] != null)
            {
                message_lbl.Text = Request.QueryString["msg"].ToString();
                message_lbl.Visible = true;
            }

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select login_type from Login where Name =@username and Password=@password";
            cmd.Parameters.AddWithValue("@username", username.Text.ToString());
            cmd.Parameters.AddWithValue("@password", pwd.Text.ToString());
            SqlDataReader r = cmd.ExecuteReader();
            r.Read();
            String login_type = logintype.SelectedItem.Text.ToString();
            if (login_type.Equals("Admin"))
            {
                if ((r.HasRows) && (r["login_type"].ToString() == "Admin"))
                {
                    Session["login"] = "Admin";
                    Session["username"] = username.Text.ToString();
                    Response.Redirect("Admin/home.aspx");
                }
                else
                {
                    Label1.Text = "Unable To Log In to Admin ! Please, check your credentials.";
                    Label1.Visible = true;
                }
            }
            else if (login_type.Equals("Employee"))
            {
                if ((r.HasRows) && (r["login_type"].ToString() == "Employee"))
                {
                    Session["login"] = "Employee";
                    Session["username"] = username.Text.ToString();
                    Response.Redirect("Employee/home.aspx");
                }
                else
                {
                    Label1.Text = "Unable To Log In to Employee ! Please, check your credentials.";
                    Label1.Visible = true;
                }
            }


            con.Close();
        }
    }
}