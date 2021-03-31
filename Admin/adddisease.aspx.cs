using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_adddisease : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click1(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(@"INSERT INTO [AyurJeeva].[dbo].[diseasedetails] ([diseasename],[symptoms],[remedies]) VALUES ('" + dname.Text + "','" + symptoms.Text + "','" + remedy.Text + "')", con);
        int t = cmd.ExecuteNonQuery();


        if (t > 0)
        {
            Label4.Text = "Data inserted successfully";
            // Response.Write("<script>alert('Data Inserted successfully')</script>");
            //Response.Redirect("adddisease.aspx");
            dname.Text = "";
            symptoms.Text = "";
            remedy.Text = "";
        }
        con.Close();

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/login.aspx");
    }
}