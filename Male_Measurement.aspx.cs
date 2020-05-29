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
    public partial class Male_Measurement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["MyprojectConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Male_Measure values(@Length_TopM,@Bust_Size,@Shoulder_Size,@Standard_Size,@Length_Pajama,@Length_WaistM,@Fitting_M)", con);
            cmd.Parameters.AddWithValue("@Length_TopM", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Bust_Size", MaleSize.SelectedValue);
            cmd.Parameters.AddWithValue("@Shoulder_Size", MaleShoulder.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Standard_Size", RadioButtonList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@Length_Pajama", Convert.ToDouble(TextBox2.Text));
            cmd.Parameters.AddWithValue("@Length_WaistM", Convert.ToDouble(TextBox3.Text));
            cmd.Parameters.AddWithValue("@Fitting_M", DropDownList1.SelectedItem.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Order.aspx");
            con.Close();
            //session Started
            Button btn1 = sender as Button;
            Session["DATA3"] = btn1.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MaleShoulder.SelectedValue = "";
            MaleSize.SelectedValue= "";
            DropDownList1.SelectedValue = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}
