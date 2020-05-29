using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyForms
{
    public partial class AllDesign : System.Web.UI.Page
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

            //Session Created for id
            ImageButton btn1 = sender as ImageButton;
           
            Session["DesignId"] =   btn1.CommandArgument.ToString();
           
            Session["DesignUrl"] = imageUrl;


            //Confirm alert box
            string confirmValue = Request.Form["confirm_value"];
            if (confirmValue == "Yes")
            {
               // Response.Redirect("Order.aspx");
                Response.Redirect("Ocassion.aspx?gender="+gender);        
            }
            else
            {
              
                Response.Redirect("Main_Measurement.aspx");
            }

        }
    }
}