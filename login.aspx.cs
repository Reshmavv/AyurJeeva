using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
  


    }
    protected void b1_Click(object sender, EventArgs e)
    {
     
        con.Open();
        String admin = t1.Text.Trim();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText= "select * from adminlogin  where  username='" + t1.Text + "' and password='" + t2.Text + "'";
         cmd.ExecuteNonQuery();
         SqlDataAdapter da = new SqlDataAdapter(cmd);
         DataSet ds = new DataSet();
         da.Fill(ds, "adminlogin");
         if (ds.Tables[0].Rows.Count > 0)
         {
             Session["admin"] = admin;
             Response.Redirect("Admin/adminhome.aspx");
         }
         else
         {
             Response.Write("<script>alert('Invalid username or password')</script>");
            

         }


        con.Close();
    }
}