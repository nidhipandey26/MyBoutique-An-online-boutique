using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace MyForms
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            string query = "SELECT COUNT(1)FROM UserTable WHERE User_Uname=@User_Uname AND User_Password=@User_Password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@User_Uname", LUser.Text.Trim());
            cmd.Parameters.AddWithValue("@User_Password", LPassw.Text.Trim());
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if(count==1)
            {
                Session["User_Uname"] = LUser.Text.Trim();
                Session["User_Password"] = LPassw.Text.Trim();
                Response.Redirect("BuyCloth.aspx");
            }
            else
            {
                Label3.Visible = true;

            }
            if(LUser.Text=="Admin" && LPassw.Text=="Admin")
            {
                Response.Redirect("AdminLogin.aspx");
            }
            
        }
                

        protected void Button2_Click(object sender, EventArgs e)
        {
            LUser.Text = "";
            LPassw.Text = "";

        }
    }

        
    }

 


 
