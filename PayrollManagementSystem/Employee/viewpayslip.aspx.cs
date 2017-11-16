using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayrollManagementSystem.App_Code;


namespace PayrollManagementSystem.Employee
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        Class1 c1 = new Class1();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Employee")
            {
                Response.Redirect("../log.aspx");
            }
            if (!IsPostBack)
            {
                bind();
            }
        }
        public void bind()
        {
            // string qry = "Select * From Employee where employeeid='" + Session["employeeid"].ToString() + "'";
            string qry = "SELECT e.employeeid , e.firstname AS firstname, e.basesalary AS basesalary,e.designation As designation, d.amount AS amount, d.deduction_id, d.month, d.year, d.TDS AS TDS, d.eleave AS eleave,i.Total AS Total,i.DA AS DA,i.Medical AS Medical,i.TA AS TA,p.netpay AS netpay,l.cl AS cl,l.el As el,l.sl AS sl,(l.el+l.sl+l.cl) AS Totalleave FROM Employee AS e INNER JOIN Deduction_details AS d ON d.emp_id_deducts=e.employeeid INNER JOIN incentive_details AS i ON i.emp_id_incentive=e.employeeid INNER JOIN payrolldetails AS p ON p.employeeidpayroll=e.employeeid INNER JOIN leave as l ON l.employeeidleave=e.employeeid   AND e.employeeid='" + Session["employeeid"] + "'";

            DataSet ds = c1.select(qry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataList1.DataSource = ds;
                DataList1.DataBind();
            }

        }

    }
}