using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using iTextSharp.tool.xml;
using System.IO;

namespace PayrollManagementSystem.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"].ToString() != "Admin")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");
            }
            else
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                SqlCommand cmd = new SqlCommand();

                cmd.Connection = con;

                String name = "select firstname from Employee where username='" + Session["username"] + "'";


                con.Open();
                cmd.CommandText = name;
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    //employeeid.Text = sdr["employeeid"].ToString();
                    username_text.Text = sdr["firstname"].ToString();
                }


                con.Close();

            }
            if (Request.QueryString["m"] == null)
            { }
            else
            {
                message_text.Visible = true;
                message_text.Text = Request.QueryString["m"].ToString();
            }

        }

        protected void search_btn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "select firstname,lastname,dob,gender,country,state,address,city,pincode,email,mobileno,username from Employee where employeeid=@value";
            cmd.Parameters.AddWithValue("@value", search.Text.ToString());
            FormView1.Visible = false;
            
            //FormView1.DataSourceID = "SqlDataSource2";
            FormView2.DataSource = cmd.ExecuteReader();
            FormView2.DataBind();
            




        }

        protected void Export_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=TestPage.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            this.Page.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 0f);
            //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);

            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            //htmlparser.Parse(sr);
            XMLWorkerHelper.GetInstance().ParseXHtml(writer, pdfDoc, sr);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}