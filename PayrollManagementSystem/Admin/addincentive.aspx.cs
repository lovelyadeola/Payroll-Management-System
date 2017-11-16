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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;
        double bs = 0;
        double medical, da, ta, m, d, t, to;
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
            if (employeeid.Text != null)
            {
                String name = "select firstname,basesalary from Employee where employeeid='" + employeeid.Text + "'";
                myconn.Open();
                cmd.CommandText = name;
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    ename.Text = sdr["firstname"].ToString();
                    bsalary.Text = sdr["basesalary"].ToString();
                    bs = Double.Parse(sdr["basesalary"].ToString());
                    //bs = 1000;
                }
                myconn.Close();
            }
        }

        protected void Addin_Click(object sender, EventArgs e)
        {
            string insert = "insert into incentive_details (emp_id_incentive,DA,TA,Medical,Total)";
            insert += "values(@emp_id,@da,@ta,@medical,@total)";

            myconn.Open();
            cmd.Parameters.AddWithValue("@emp_id", employeeid.Text);
            cmd.Parameters.AddWithValue("@da", dar.Text);
            cmd.Parameters.AddWithValue("@ta", tar.Text);
            cmd.Parameters.AddWithValue("@medical", medicalr.Text);
            cmd.Parameters.AddWithValue("@total", total.Text);
            cmd.CommandText = insert;
            try
            {
                cmd.ExecuteNonQuery();
            }
            catch (Exception) { };
            myconn.Close();
            message_lbl.Text = "incentive added successfully";
            message_lbl.Visible = true;
        }

        protected void getin_Click(object sender, EventArgs e)
        {
            double pannum = bs * 12;
            if (pannum > 500000)
            {
                medical = 1.5;
                da = 1;
                ta = 2;
            }
            else
            {
                medical = 1;
                da = 0.5;
                ta = 1.5;
            }
            m = ((bs * medical) / 100);
            d = ((bs * da) / 100);
            t = ((bs * ta) / 100);
            to = m + d + t;

            medicalp.Text = medical.ToString();
            dap.Text = da.ToString();
            tap.Text = ta.ToString();
            medicalr.Text = m.ToString();
            dar.Text = d.ToString();
            tar.Text = t.ToString();
            total.Text = to.ToString();


        }


    }
}