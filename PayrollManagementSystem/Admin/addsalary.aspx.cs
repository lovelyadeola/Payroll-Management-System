using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem.Admin
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;
        //double bs = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "Admin")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            myconn.Open();
            cmd.CommandText = "select firstname,basesalary from Employee where employeeid= '" + employeeid.Text + "'";
            //cmd.CommandText += employeeid.Text;
            SqlDataReader rdr = cmd.ExecuteReader();
            string esalary,ename;
            if (rdr.Read())
            {
                //jotitle = rdr["designation"].ToString();
                ename = rdr["firstname"].ToString();
                esalary = rdr["basesalary"].ToString();
                name.Text = ename;
                salary.Text = esalary;
                //bs = Double.Parse(rdr["basesalary"].ToString());

            }
            myconn.Close();

        }

        protected void add_btn_Click(object sender, EventArgs e)
        {

            myconn.Open();
            cmd.CommandText = "INSERT INTO Salary(employeeidsalary,year,month,basesalary) VALUES(@empid,@year,@month,@bsalary)";
            cmd.Parameters.AddWithValue("@empid", employeeid.Text);
            cmd.Parameters.AddWithValue("@year", year.Text);
            cmd.Parameters.AddWithValue("@month", month.Text);
            cmd.Parameters.AddWithValue("@bsalary", salary.Text);


            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { };
            myconn.Close();
            message_lbl.Text = "salary successfully added";
            message_lbl.Visible = true;
            







        }
        public void  modify_Click(object sender,EventArgs e)
        {
            cmd.CommandText = "update Employee set basesalary=@salary where employeeid=@emppid";
            cmd.Parameters.AddWithValue("@salary", newsalary.Text);
            cmd.Parameters.AddWithValue("@emppid", employeeid.Text);
            myconn.Open();
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { };
            myconn.Close();
            myconn.Open();
            cmd.CommandText = "INSERT INTO Salary(employeeidsalary,year,month,basesalary) VALUES(@empid,@year,@month,@bsalary)";
            cmd.Parameters.AddWithValue("@empid", employeeid.Text);
            cmd.Parameters.AddWithValue("@year", year.Text);
            cmd.Parameters.AddWithValue("@month", month.Text);
            cmd.Parameters.AddWithValue("@bsalary", newsalary.Text);


            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { };
            myconn.Close();
            message_lbl.Text = "salary successfully added";
            message_lbl.Visible = true;




        }
    }
}