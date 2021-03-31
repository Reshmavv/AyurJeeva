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

public partial class Admin_changeadmispass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {

        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter(@"SELECT [password]
  FROM [Ayurjeeva].[dbo].[adminlogin] where username='" + Session["admin"].ToString() + "'", con);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count.ToString() == "1")
        {
            if ((npass.Text == rpass.Text))
            {
                SqlCommand cmd = new SqlCommand(@"UPDATE [Ayurjeeva].[dbo].[adminlogin]
   SET [password] = '" + npass.Text + "' WHERE username='" + Session["admin"].ToString() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

                //Response.Write("<script>alert('Password changed succesfully')</script>");
                Label4.Text = "Password changed successfully";
                //Response.Redirect("changeadminpass.aspx");
                npass.Text = "";
                rpass.Text = "";
                


            }
           
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/login.aspx");
    }
}