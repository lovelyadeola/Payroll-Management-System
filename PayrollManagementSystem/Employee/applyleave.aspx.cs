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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Employee")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            
           
                String name = "select employeeid,firstname from Employee where username='" + Session["username"] + "'";
                myconn.Open();
                cmd.CommandText = name;
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    employeeid.Text = sdr["employeeid"].ToString();
                    ename.Text = sdr["firstname"].ToString();
                }
                myconn.Close();
            if (IsPostBack)
            {
                DateTime d1 = Convert.ToDateTime(sdate.Text.ToString());
                DateTime d2 = Convert.ToDateTime(edate.Text.ToString());
                double result = (d2 - d1).TotalDays+1;
                duration.Text = result.ToString();
            }






        }

        protected void apply_Click(object sender, EventArgs e)
        {
          string insert="insert into leave_requests(emp_id_leave,leavetype,startingdate,endingdate,duration,reason,status) values(@empid,@type,@sdate,@edate,@duration,@reason,'pending')";
            myconn.Open();
            cmd.CommandText = insert;
            cmd.Parameters.AddWithValue("@empid",employeeid.Text.ToString());
            cmd.Parameters.AddWithValue("@type", leavetype.SelectedItem.Value.ToString());
            cmd.Parameters.AddWithValue("@sdate",sdate.Text.ToString());
            cmd.Parameters.AddWithValue("@edate",edate.Text.ToString());
            cmd.Parameters.AddWithValue("@duration",duration.Text.ToString());
            cmd.Parameters.AddWithValue("@reason", reason.Text.ToString());
            cmd.ExecuteNonQuery();
            myconn.Close();
            message_lbl.Text = "your leave application submitted successfully";
            message_lbl.Visible = true;


           


        }
    }
}