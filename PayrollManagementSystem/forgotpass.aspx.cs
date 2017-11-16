using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PayrollManagementSystem
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            string strSelect = "select username,password from Employee WHERE email = @email";

            SqlConnection connection = new SqlConnection(strConnection);
            SqlCommand command = new SqlCommand();
            command.Connection = connection;
            command.CommandType = CommandType.Text;
            command.CommandText = strSelect;

            SqlParameter email = new SqlParameter("@email", SqlDbType.VarChar, 50);
            email.Value = txtEmail.Text.Trim().ToString();
            command.Parameters.Add(email);

            //Create Dataset to store results and DataAdapter to fill Dataset 
            DataSet dsPwd = new DataSet();
            SqlDataAdapter dAdapter = new SqlDataAdapter(command);
            connection.Open();
            dAdapter.Fill(dsPwd);
            connection.Close();
            if (dsPwd.Tables[0].Rows.Count > 0)
            {
                MailMessage loginInfo = new MailMessage();
                loginInfo.To.Add(txtEmail.Text.ToString());
                loginInfo.From = new MailAddress("YourID@gmail.com");
                loginInfo.Subject = "Forgot Password Information";

                loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["userName"] + "<br><br>Password: " + dsPwd.Tables[0].Rows[0]["Password"] + "<br><br>";
                loginInfo.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("ownerofmysite@gmail.com", "splitwise");
                smtp.Send(loginInfo);
                //lblMessage.Text = "Password is sent to you email id";
                message_lbl.Text= "Password is sent to your email id";
                message_lbl.Visible = true;

            }
            else
            {
                message_lbl.Text = "Email Address Not Registered";
                message_lbl.Visible = true;
            }
        }
    }
}