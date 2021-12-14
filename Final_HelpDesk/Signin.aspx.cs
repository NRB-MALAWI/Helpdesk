using Final_HelpDesk.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_HelpDesk
{
    public partial class Signin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["NRBHelpDesk"].ToString());
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Authentication();
        }
        void Authentication()
        {
            try
            {
                string pass = txtpassword.Value;
                string uid = Usertexbox.Value;

                con.Open();
                string query = "select * from Users where Username='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader sdr = cmd.ExecuteReader();

                if (sdr.Read())
                {
                    string role = sdr[7].ToString();
                    string district = sdr[3].ToString();
                    string firstname = sdr[1].ToString();

                   
                    UserLogin.District = district;
                    UserLogin.userid = Convert.ToInt32(sdr[0]);
                    UserLogin.firstname = firstname;

                    if (role == "1")
                    {
                        UserLogin.user = uid;

                        Response.Redirect(@"~/Admin/Default.aspx");
                    }
                    else if (role == "2")
                    {
                        UserLogin.user = uid;
                        Response.Redirect(@"~/Technician/Default.aspx");
                    }
                    else if (role == "3")
                    {
                        UserLogin.user = uid;
                        Response.Redirect(@"~/DataClerk/Default.aspx");
                    }
                    else
                    {
                        ErrorMSGlbl.Text = uid + " has no role";
                    }
                }
                else
                {
                    ErrorMSGlbl.Text = "Incorrect Logins";
                }
            }
            catch (Exception es)
            {
                ErrorMSGlbl.Text = "Error " + es;
            }
        }
    }
}