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
    public partial class Register : System.Web.UI.Page
    {
       
       
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String str = args.Value;
            args.IsValid = false;

            if(str.Length<7||str.Length>20)
            {
                return;
            }

            bool capital = false;
            foreach(char ch in str)
            {
                if(ch>='A' && ch<='Z')
                {
                    capital = true;
                    break;
                }
            }
            if (!capital)
                return;
            bool digit = false;
            foreach(char ch in str)
            {
                if(ch>='0'&&ch<='9')
                {
                    digit = true;
                    break;
                }
            }
            if (!digit)
                return;
            args.IsValid = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into UserTable values(@User_Name,@User_Uname,@User_Mobile,@User_Email,@User_Password,@User_Adress,@User_City)", con);
            cmd.Parameters.AddWithValue("@User_Name", Txtname.Text);
            cmd.Parameters.AddWithValue("@User_Uname", TxtUserName.Text);
            cmd.Parameters.AddWithValue("@User_Mobile", TxtMob.Text);
            cmd.Parameters.AddWithValue("@User_Email", TxtEmail.Text);
            cmd.Parameters.AddWithValue("@User_Password", TxtPass.Text);
            cmd.Parameters.AddWithValue("@User_Adress", TxtAdd.Text);
            cmd.Parameters.AddWithValue("@User_City", TxtCity.Text);
            cmd.ExecuteNonQuery();
        
            con.Close();
            Response.Redirect("BuyCloth.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TxtUserName.Text = "";
            TxtPass.Text = "";
            Txtname.Text = "";
            TxtMob.Text = "";
            TxtEmail.Text = "";
            TxtConfirm.Text = "";
            TxtCity.Text = "";
            TxtAdd.Text = "";
                       
        }
    }
}