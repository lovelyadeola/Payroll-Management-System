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
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Employee")
            {
                Response.Redirect("../log.aspx");
            }
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            myconn.Open();
            string eid = "select employeeid from Employee where username='" + Session["username"] + "'";
          
            cmd.CommandText = eid;
            SqlDataReader sdr = cmd.ExecuteReader();
            if(sdr.Read())
            {
                employeeid.Text = sdr["employeeid"].ToString();
            }
            myconn.Close();

        }

        protected void view_Click(object sender, EventArgs e)
        {
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            myconn.Open();
            //string check = "select employeeidpayroll,year,month from payrolldetails where employeeidpayroll=@empid";
            string check = "SELECT * FROM payrolldetails WHERE(employeeidpayroll = @empid) AND(year = @year) AND(month = @month)";
            cmd.Parameters.AddWithValue("@empid",employeeid.Text);
           cmd.Parameters.AddWithValue("@year",year.Text);
            cmd.Parameters.AddWithValue("@month",month.Text);
            
            cmd.CommandText = check;
            SqlDataReader rdr = cmd.ExecuteReader();
            rdr.Read();
            if (rdr.HasRows)
            {
                message_lbl.Text = "salary has been paid to you";
                message_lbl.Visible = true;
                Session["employeeid"] = employeeid.Text.ToString();
                show.Visible = true;
                //Response.Redirect("viewpayslip.aspx");

            }
            else
            {
                message_lbl.Text = "Payslip of this month and year has not yet been generated OR Record of this payslip is not available in our database";
                message_lbl.Visible = true;

            }
            myconn.Close();



        }

        protected void show_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewpayslip.aspx");
        }
    }
}