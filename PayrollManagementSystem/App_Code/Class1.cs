using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace PayrollManagementSystem.App_Code
{
    public class Class1
    {
        
        SqlConnection con=new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        public int inpudel(string qry)
        {
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;

        }
        public DataSet select(string qry)
        {

            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con.Close();
            return ds;
        }
        public DataTable select1(string qry)
        {
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            con.Open();
            DataTable dt = new DataTable();
            ad.Fill(dt);
            con.Close();
            return dt;

        }
        public int login(string qry)
        {

            int i = 0;
            SqlCommand cmd = new SqlCommand(qry, con);
            con.Open();
            i = (int)cmd.ExecuteScalar();
            con.Close();
            return i;

        }
    }
}