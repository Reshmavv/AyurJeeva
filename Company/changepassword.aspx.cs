using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.IO;

public partial class Company_changepassword : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
       
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(@"SELECT [password]
  FROM [Ayurjeeva].[dbo].[companyregistration_table] where cid='" + Session["companyid"].ToString() + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if ((newpass.Text == rnewpass.Text))
            {
                SqlCommand cmd = new SqlCommand(@"UPDATE [Ayurjeeva].[dbo].[companyregistration_table]
   SET [password] = '" + newpass.Text + "' WHERE cid='" + Session["companyid"].ToString() + "'", con);
               cmd.ExecuteNonQuery();
                con.Close();

                    //Response.Write("<script>alert('Password changed succesfully')</script>");
                    Label1.Text = "password changed successfully";
                    //Response.Redirect("changepassword.aspx");
                    // newpass.Text = "";
                    //rnewpass.Text = "";

                }
           
               

            
           
        }
    }
    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("companyhome.aspx");
    }
}