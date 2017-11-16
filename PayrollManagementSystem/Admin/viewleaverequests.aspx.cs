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
    public partial class WebForm17 : System.Web.UI.Page
    {
        SqlConnection myconn;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            myconn = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = myconn;
            if(Session["login"].ToString()!="Admin")
            {
                Response.Redirect("../log.aspx");
            }


        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = GridView1.SelectedRow;
            DateTime d1 = DateTime.Parse(row.Cells[4].Text);
            string mont = d1.Month.ToString();

            string yea = d1.Year.ToString();
            int m = Int32.Parse(mont);
            int y = Int32.Parse(yea);
            //string update = "";
            int du = Int32.Parse(row.Cells[6].Text);
            string eid = row.Cells[2].Text.ToString();
            string ty = row.Cells[3].Text.ToString();
            string dur = row.Cells[6].Text.ToString();
            //Response.Write(year);
            Label Label1 = (Label)row.Cells[8].FindControl("Label1");
            string a = Label1.Text;

            //TextBox1.Text = a;

            employeeid.Text = eid;
            month.Text = mont;
            year.Text = yea;
            type.Text = ty;
            duration.Text = dur;



        }

        protected void add_Click(object sender, EventArgs e)
        {
            string update;
            int du = Int32.Parse(duration.Text);

            if (type.Text == "cl")
            {
                update = "update leave set cl=cl+" + du + "where employeeidleave=@em and year=@year and month=@month";
                cmd.Parameters.AddWithValue("@em", employeeid.Text);
                cmd.Parameters.AddWithValue("@year", year.Text);
                cmd.Parameters.AddWithValue("@month", month.Text);
                myconn.Open();
                cmd.CommandText = update;
                int r = cmd.ExecuteNonQuery();
                if (r == 0)
                {
                    string insert = "insert into leave (employeeidleave,year,month,cl) values(@emp,@yearr,@monthh,@cll)";
                    cmd.Parameters.AddWithValue("@emp", employeeid.Text);
                    cmd.Parameters.AddWithValue("@yearr", year.Text);
                    cmd.Parameters.AddWithValue("@monthh", month.Text);
                    cmd.Parameters.AddWithValue("@cll", du);
                    cmd.CommandText = insert;
                    cmd.ExecuteNonQuery();
                }
                myconn.Close();
            }
            else if (type.Text == "sl")
            {
                update = "update leave set sl=sl+" + du + "where employeeidleave=@em1 and year=@year1 and month=@month1";
                cmd.Parameters.AddWithValue("@em1", employeeid.Text);
                cmd.Parameters.AddWithValue("@year1", year.Text);
                cmd.Parameters.AddWithValue("@month1", month.Text);
                myconn.Open();
                cmd.CommandText = update;
                int r = cmd.ExecuteNonQuery();
                if (r == 0)
                {
                    string insert = "insert into leave (employeeidleave,year,month,sl) values(@emp1,@yearr1,@monthh1,@cll1)";
                    cmd.Parameters.AddWithValue("@emp1", employeeid.Text);
                    cmd.Parameters.AddWithValue("@yearr1", year.Text);
                    cmd.Parameters.AddWithValue("@monthh1", month.Text);
                    cmd.Parameters.AddWithValue("@cll1", du);
                    cmd.CommandText = insert;
                    cmd.ExecuteNonQuery();
                }
                myconn.Close();
            }
            else
            {
                update = "update leave set el=el+" + du + "where employeeidleave=@em2 and year=@year2 and month=@month2";
                cmd.Parameters.AddWithValue("@em2", employeeid.Text);
                cmd.Parameters.AddWithValue("@year2", year.Text);
                cmd.Parameters.AddWithValue("@month2", month.Text);
                myconn.Open();
                cmd.CommandText = update;
                int r = cmd.ExecuteNonQuery();
                if (r == 0)
                {
                    string insert = "insert into leave (employeeidleave,year,month,el) values(@emp2,@yearr2,@monthh2,@cll2)";
                    cmd.Parameters.AddWithValue("@emp2", employeeid.Text);
                    cmd.Parameters.AddWithValue("@yearr2", year.Text);
                    cmd.Parameters.AddWithValue("@monthh2", month.Text);
                    cmd.Parameters.AddWithValue("@cll2", du);
                    cmd.CommandText = insert;
                    cmd.ExecuteNonQuery();
                }
                myconn.Close();

            }

        }
    }
}