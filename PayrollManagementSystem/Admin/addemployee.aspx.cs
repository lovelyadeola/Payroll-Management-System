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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected String LabelProperty
        {
            get
            {
                return hidden.Value;
            }
            set
            {
                hidden.Value = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["login"].ToString()!="Admin")
            {
                Session.Abandon();
                Response.Redirect("../log.aspx");

            }
            doj.Text = DateTime.Now.ToShortDateString();
        }

        protected void add_button_Click(object sender, EventArgs e)
        {
            /*DateTime dateOfBirth = Convert.ToDateTime(dob.Text);
            DateTime today = DateTime.Now;
            TimeSpan ts = today - dateOfBirth;
            DateTime age = DateTime.MinValue + ts;

            int years = age.Year - 1;*/
            String uname_status = hidden.Value;
            if (uname_status == "username available")
            {
               
                    string type,firstname,lastname,DOB,gen,cont,stat,cit,add,pinc,eml,mob,desg,DOJ,bs, uname, pass, reg_msg = null;



                    type = employeetype.SelectedItem.Text.ToString();
                    int prev_id  = (int)Application["prev_id"];
               
                string id = prev_id.ToString();
                id = String.Concat(type, id);
                     firstname= Firstname.Text.ToString();
                    lastname = Lastname.Text.ToString();
                    DOB = dob.Text.ToString();
                    gen = Gender.SelectedItem.Text.ToString();
                    cont = country.Text.ToString();
                    stat = state.Text.ToString();
                    cit = city.Text.ToString();
                    add = address.Text.ToString();
                    pinc = pincode.Text.ToString();
                    eml =email.Text.ToString();
                    mob =mobileno.Text.ToString();
                    desg =designation.Text.ToString();
                    //joid =jobid.Text.ToString();
                    DOJ =doj.Text.ToString();
                    bs = basesalary.Text.ToString();


                    uname = username.Text.ToString();
                    pass = password.Text.ToString();
                    
                    SqlConnection con = new SqlConnection();
                    con.ConnectionString = WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
                    SqlCommand cmd = new SqlCommand();
                    con.Open();
                    cmd.Connection = con;
                    cmd.CommandText = "INSERT INTO Employee (type,firstname,lastname,dob,gender,country,state,address,city,pincode,email,mobileno,designation,doj,basesalary,username,password) VALUES (@type,@firstname,@lastname,@dob,@gender,@country,@state,@address,@city,@pincode,@email,@mobileno,@designation,@doj,@basesalary,@username,@password)";
                    cmd.Parameters.AddWithValue("@type", type);
                    cmd.Parameters.AddWithValue("@firstname", firstname);
                    cmd.Parameters.AddWithValue("@lastname", lastname);
                    cmd.Parameters.AddWithValue("@dob", DOB);
                    cmd.Parameters.AddWithValue("@gender", gen);
                    cmd.Parameters.AddWithValue("@country", cont);
                    cmd.Parameters.AddWithValue("@state", stat);
                    cmd.Parameters.AddWithValue("@address", add);
                    cmd.Parameters.AddWithValue("@city", cit);
                cmd.Parameters.AddWithValue("@employeeid", id);
                    cmd.Parameters.AddWithValue("@pincode", pinc);
                    cmd.Parameters.AddWithValue("@email", eml);
                    cmd.Parameters.AddWithValue("@mobileno", mob);
                    cmd.Parameters.AddWithValue("@designation", desg);
                    //cmd.Parameters.AddWithValue("@jobid", joid);
                    cmd.Parameters.AddWithValue("@doj", DOJ);
                    cmd.Parameters.AddWithValue("@basesalary", bs);
                    cmd.Parameters.AddWithValue("@username", uname);
                    cmd.Parameters.AddWithValue("@password", pass);









                    int num_rows = cmd.ExecuteNonQuery();
                    if (num_rows > 0)
                    {
                    message_lbl.Text = "Employee added successfully";
                    message_lbl.Visible = true;
                        //insertion successful...
                        //reg_msg = "Employee is Added Successfully !";
                        //Response.Redirect("../log.aspx?msg=" + Server.UrlEncode(reg_msg));
                    }
                    else
                    {
                      message_lbl.Text = "Employee Not added";
                      message_lbl.Visible = true;

                    //insertion failure...
                    // reg_msg = "Employee is Not Added !";
                    //Response.Redirect("../log.aspx?msg=" + Server.UrlEncode(reg_msg));
                }
                con.Close();
                
                
            }
            else
            {
                add_msg.Text = "Invalid Username provided !";
                add_msg.CssClass = "alert alert-danger";
                add_msg.Visible = true;
            }
        }

        [System.Web.Services.WebMethod]
        public static bool UserNameChecker(string newUserName)
        {
            if (newUserName != "")
            {
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select Name from login where Name=@username", con);
                cmd.Parameters.AddWithValue("@username", newUserName);

                object found = cmd.ExecuteScalar();

                if (found != null)
                    return true;
                else
                    return false;
            }
            else
            {
                return true;
            }
        }
    }
}