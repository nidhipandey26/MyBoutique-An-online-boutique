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
    public partial class Female_Measurement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Female_Measure values(@Length_Top,@Bust,@Shoulder,@Standard,@Length_Salwar,@Length_Waist,@Fitting)", con);
            cmd.Parameters.AddWithValue("@Length_Top", Convert.ToDouble(TextBox1.Text));
            cmd.Parameters.AddWithValue("@Bust", FemaleSize.SelectedItem.Text) ;
            cmd.Parameters.AddWithValue("@Shoulder", FemaleShoulder.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Standard",RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Length_Salwar",Convert.ToDouble(TextBox2.Text) );
            cmd.Parameters.AddWithValue("@Length_Waist",Convert.ToDouble(TextBox3.Text) );
            cmd.Parameters.AddWithValue("@Fitting",DropDownList1.SelectedItem.Text );
            
            cmd.ExecuteNonQuery();
            Response.Redirect("Order.aspx");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            RadioButtonList1.SelectedValue = "";
            DropDownList1.SelectedValue = "";
            FemaleSize.SelectedValue = "";
            FemaleShoulder.SelectedValue = "";

        }
    }
}