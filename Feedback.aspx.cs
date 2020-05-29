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
    public partial class Feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("insert into Feedback values(@F_Name,@F_Email,@F_Mob,@F_Com)", con);
            cmd.Parameters.AddWithValue("@F_Name", Fdname.Text);
            cmd.Parameters.AddWithValue("@F_Email", FdEmail.Text);
            cmd.Parameters.AddWithValue("@F_Mob", FdMbNo.Text);
            cmd.Parameters.AddWithValue("@F_Com", FdComent.Text);       
            con.Open();
            cmd.ExecuteNonQuery();
      
            con.Close();
            Response.Redirect("Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Fdname.Text = "";
            FdMbNo.Text = "";
            FdEmail.Text = "";
            FdComent.Text = "";
            Response.Redirect("Home.aspx");

        }
    }
}
