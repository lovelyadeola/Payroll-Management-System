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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;
        
            
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Admin")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            myconn.Open();
            cmd.CommandText = "select designation from Employee where employeeid= '" + employeeid.Text + "'";
            //cmd.CommandText += employeeid.Text;
            SqlDataReader rdr = cmd.ExecuteReader();
            string jotitle, joid;
            if(rdr.Read())
            {
                jotitle = rdr["designation"].ToString();
                //joid = rdr["jobid"].ToString();
                
                jobtitle.Text = jotitle;
            }
            myconn.Close();
        }

        protected void add_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "INSERT INTO jobdetails(job_title,job_description,emp_id_job) VALUES(@desg,@desc,@empid)";
            //cmd.Parameters.AddWithValue("@jobid",jobid.Text);
            cmd.Parameters.AddWithValue("@desg",jobtitle.Text);
            cmd.Parameters.AddWithValue("@desc",jobdescription.Text);
            cmd.Parameters.AddWithValue("@empid",employeeid.Text);


            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { };
            myconn.Close();
            message_lbl.Text = "job added succcessfully";
            message_lbl.Visible = true;








        }

     
    }
}