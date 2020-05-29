using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace MyForms
{
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            CardNumb.Text = "";
            NameOnCard.Text = "";
            CardType.SelectedValue= "";
            CVV.Text = "";
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            SqlCommand cmd = new SqlCommand("insert into Payment values(@Card_no,@Card_type,@Card_Name,@Cvv)", con);

            cmd.Parameters.AddWithValue("@Card_no", CardNumb.Text);
            cmd.Parameters.AddWithValue("Card_type", CardType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Card_Name", NameOnCard.Text);
            cmd.Parameters.AddWithValue("@Cvv", CVV.Text);
            con.Open();
            cmd.ExecuteNonQuery();
           
            con.Close();
           
            //Confirm alert box
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
                Response.Redirect("Feedback.aspx");

            }
            else
            {
                Response.Redirect("Home.aspx");
            }
        }
   }
}
