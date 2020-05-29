using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyForms
{
    public partial class ManageFeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageOrder.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManagePayment.aspx");
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageFeedback.aspx");
        }
    }
}