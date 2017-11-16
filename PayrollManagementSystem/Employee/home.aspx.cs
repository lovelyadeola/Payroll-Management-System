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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string firstname;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select firstname from Employee where username=";
            cmd.CommandText += Session["username"];
            SqlDataReader r = cmd.ExecuteReader();
            r.Read();
            firstname = r["firstname"].ToString();
            user_name.Text = firstname;
            con.Close();*/
            if (Session["login"].ToString() != "Employee")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            else
            {
               
                SqlConnection con = new SqlConnection();
                con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand();
                
                cmd.Connection = con;

                String name = "select firstname from Employee where username='" + Session["username"] + "'";


                con.Open();
                cmd.CommandText = name;
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    //employeeid.Text = sdr["employeeid"].ToString();
                    user_name.Text = sdr["firstname"].ToString();
                }

                
                con.Close(); 


                   
            }


        }
    }
}