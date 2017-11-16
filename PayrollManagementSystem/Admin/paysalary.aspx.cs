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
    public partial class WebForm11 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;
        double sal, allow, tax,tax1,tax2,net;

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

            if (IsPostBack)
            {
                DateTime d1 = DateTime.Now;
                string mo = d1.Month.ToString();
                string yr = d1.Year.ToString();
                int m = Int32.Parse(mo);
                int y = Int32.Parse(yr);
                month.Text = m.ToString();
                year.Text = y.ToString();
            


            
            string search = "SELECT e.employeeid, e.firstname AS firstname, e.basesalary AS basesalary,e.designation As designation, d.amount , d.deduction_id, d.month, d.year, d.TDS AS TDS, d.eleave AS eleave,i.Total AS Total FROM Employee AS e INNER JOIN Deduction_details AS d ON d.emp_id_deducts=e.employeeid INNER JOIN incentive_details AS i ON i.emp_id_incentive=e.employeeid  AND e.employeeid='" + employeeid.Text + "'";


            cmd.CommandText = search;
            SqlDataReader rdr = cmd.ExecuteReader();
            if (rdr.Read())
            {
                ename.Text = rdr["firstname"].ToString();
                bsalary.Text = rdr["basesalary"].ToString();
                job.Text = rdr["designation"].ToString();
                td.Text = rdr["TDS"].ToString();
                ld.Text = rdr["eleave"].ToString();
                inc.Text = rdr["Total"].ToString();


            }
                sal = Double.Parse(bsalary.Text);
                allow = Double.Parse(inc.Text);
                tax1 = Double.Parse(td.Text);
                tax2 = Double.Parse(ld.Text);
                tax = tax1 + tax2;
                net = sal + allow - tax;
                netsalary.Text = net.ToString();
                
        }
        myconn.Close();
    }

        protected void pay_Click(object sender, EventArgs e)
        {
            myconn.Open();
            string insert = "insert into payrolldetails(employeeidpayroll,year,month,deduction,incentive,netpay) values(@empid,@year,@month,@ded,@inc,@netpay)";
            cmd.Parameters.AddWithValue("@empid", employeeid.Text);
            cmd.Parameters.AddWithValue("@year", year.Text);
            cmd.Parameters.AddWithValue("@month", month.Text);
            cmd.Parameters.AddWithValue("@ded", tax.ToString());
            cmd.Parameters.AddWithValue("@inc", inc.Text);
            cmd.Parameters.AddWithValue("@netpay", netsalary.Text);
            cmd.CommandText = insert;
            cmd.ExecuteNonQuery();
            myconn.Close();
            message_lbl.Text = "salary paid successfully";
            message_lbl.Visible = true;

        }
    }
}