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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;
        double bs = 0;
        int el = 0, cl = 0, sl = 0;
        double tot, td, final;

        protected void deduct_Click(object sender, EventArgs e)
        {
            string insert = "insert into Deduction_details (emp_id_deducts,month,year,TDS,eleave,amount)";
            insert += "values (@emp,@mo,@ye,@tds,@eleave,@amount)";

            cmd.Parameters.AddWithValue("@emp", employeeid.Text);
            DateTime d1 = DateTime.Now;
            string month = d1.Month.ToString();
            string year = d1.Year.ToString();
            int m = Int32.Parse(month);
            int y = Int32.Parse(year);
            cmd.Parameters.AddWithValue("@mo", m);
            cmd.Parameters.AddWithValue("@ye", y);

            cmd.Parameters.AddWithValue("@tds", tds.Text);
            cmd.Parameters.AddWithValue("@eleave", dleave.Text);
            cmd.Parameters.AddWithValue("@amount", total.Text);
            
            myconn.Open();
            cmd.CommandText = insert;
            cmd.ExecuteNonQuery();
            myconn.Close();
            message_lbl.Text = "deduction added successfully";
            message_lbl.Visible = true;
        }

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
                sdr.Close();
                DateTime d1 = DateTime.Now;
                string month = d1.Month.ToString();
                string year = d1.Year.ToString();

                string l = "select el,sl,cl,(el+sl+cl) as 'total' from leave where employeeidleave=@em and year=@year and month=@month";
                cmd.Parameters.AddWithValue("@em", employeeid.Text);
                cmd.Parameters.AddWithValue("@year", year);
                cmd.Parameters.AddWithValue("@month", month);
                cmd.CommandText = l;
                SqlDataReader sdr1 = cmd.ExecuteReader();

                if (sdr1.Read())
                {
                    ltaken.Text = sdr1["total"].ToString();
                    el = Int32.Parse(sdr1["el"].ToString());
                    sl = Int32.Parse(sdr1["sl"].ToString());
                    cl = Int32.Parse(sdr1["cl"].ToString());
                }
                myconn.Close();
            }
        }

        protected void get_Click(object sender, EventArgs e)
        {
            double daily = (double)(bs / 30);
            double ededuct = (double)(el * daily);
            double sdeduct = 0;
            if (sl > 10)
                sdeduct = (double)((sl - 2) * (daily / 2));
            tot = ededuct + sdeduct;
            dleave.Text = tot.ToString();


            double pannum = (double)(bs * 12);
            if (pannum > 1000000)
            {
                td = (double)((112500 / 12) + (.3 * bs));
            }
            else if (pannum > 500000)
            {
                td = (double)((12500 / 12) + (.2) * bs);
            }
            else if (pannum > 250000)
            {
                td = (double)(.05 * bs);
            }
            else
            {
                td = 0;
            }
            tds.Text = td.ToString();
            //double net = (double)(bs - td);
            final = tot + td;
            total.Text = final.ToString();
        }
    }
}