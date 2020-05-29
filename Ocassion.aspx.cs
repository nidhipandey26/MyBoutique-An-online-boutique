using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyForms
{
    public partial class Ocassion : System.Web.UI.Page
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

            Label lblImageUrl = (Label)item.FindControl("LblImageUrl");
            string imageUrl = lblImageUrl.Text;

            //session Created.
            ImageButton btn1 = sender as ImageButton;
            
           Session["OcassionUrl"] = imageUrl;
           Session["OcassionId"] = btn1.CommandArgument.ToString();
            Response.Redirect("Main_Measurement.aspx");
        }
    }
}