using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class userregistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected Boolean checkmail()
    {
        Boolean emailavailable = false;
        string myquery="select * from userregistration_table where email='"+email.Text+"'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;
        }
        con.Close();
        return emailavailable;
       
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (checkmail() == true)
        {
            Label1.Text = "Your Email is Already Registered with us";
          
        }
        else
        {


            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [AyurJeeva].[dbo].[userregistration_table] ([name],[email],[password])
     VALUES('" + name.Text + "','" + email.Text + "','" + password.Text + "')", con);


            int t=cmd.ExecuteNonQuery();
            if (t > 0)
            {

                //Response.Write("<script>alert('Registered successfully')</script>");
                //Response.Write("Registered successfully");
                //Response.Redirect("userregistration.aspx");
                Label2.Text = "Registered Successfully";
                name.Text = "";
                email.Text = "";
                password.Text = "";
                repassword.Text = "";
            }
                
            
            con.Close();
        }
    }
}