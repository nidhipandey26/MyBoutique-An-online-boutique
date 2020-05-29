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
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Label1.Text = (string)Session["ClothID"];
                Label2.Text = (string)Session["DesignId"];
                Label3.Text = (string)Session["OcassionId"];
                ClothImage.ImageUrl = (string)Session["ClothUrl"];
                DesignImage.ImageUrl = (string)Session["DesignUrl"];
                OcassionImage.ImageUrl = (string)Session["OcassionUrl"];
                string clothPrice = (string)Session["ClothPrice"];
                double totalPrice = Convert.ToDouble(clothPrice) + 300; 
                Label7.Text = totalPrice.ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Confirm alert box
            string confirmValue = Request.Form["confirm_value"];
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into OrderTable values(@Order_Cloth_Id,@Order_Design_Id,@Order_Look_Id,@Order_ClothImg,@Order_DesignImg,@Order_LookImg,@Order_Cost)", con);
            cmd.Parameters.AddWithValue("@Order_Cloth_Id", Label1.Text);
            cmd.Parameters.AddWithValue("@Order_Design_Id", Label2.Text);
            cmd.Parameters.AddWithValue("@Order_Look_Id", Label3.Text);
            cmd.Parameters.AddWithValue("@Order_ClothImg", ClothImage.ImageUrl);
            cmd.Parameters.AddWithValue("@Order_DesignImg", DesignImage.ImageUrl);
            cmd.Parameters.AddWithValue("@Order_LookImg", OcassionImage.ImageUrl);
            cmd.Parameters.AddWithValue("@Order_Cost", Label7.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            if (confirmValue == "Yes")
            {
                Response.Redirect("Payment.aspx");
            }
            else
            {
                Response.Redirect("CashOnDelivery.aspx");
            }

            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}