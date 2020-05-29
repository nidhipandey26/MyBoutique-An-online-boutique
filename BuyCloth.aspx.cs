using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace MyForms
{
    public partial class BuyCloth : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["gender"] != null)
            {
                DataList1.DataSourceID = null;
                DataList1.DataSource = SqlDataSource2;
                DataList1.DataBind();

            }

        }
      
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuyCloth.aspx?gender=Male");

        }

        protected void LinkButton2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("BuyCloth.aspx?gender=Female");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            
            ImageButton btn = (ImageButton)sender;
            DataListItem item = (DataListItem)btn.NamingContainer;
            Label lblId = (Label)item.FindControl("LblID");
            Label lblGender = (Label)item.FindControl("LblGender");
            
            Label lblImageUrl = (Label)item.FindControl("LblImageUrl");
            string id = lblId.Text;
            String gender = lblGender.Text;
            string imageUrl = lblImageUrl.Text;
            Label lblPrice = (Label)item.FindControl("lblPrice");
            string price = lblPrice.Text;
            
            //session for id
            ImageButton btn1 = sender as ImageButton;
            Session["ClothID"] = btn1.CommandArgument.ToString();

            //session for image
            Session["ClothUrl"] = imageUrl;
            Session["ClothPrice"] = price;

           // Response.Redirect("Order.aspx");
            Response.Redirect("AllDesign.aspx?gender="+gender);
           
        }
    }
}
       
            
  
