using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls.WebParts;
using System.Text;

public partial class userlogin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
          
        }
    }

    protected void submit_Click(object sender, EventArgs e)
    {
        
        con.Open();
        String user = t1.Text.Trim();
        SqlCommand cmd = con.CreateCommand() ;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText="select * from userregistration_table where email='"+t1.Text+"' and password='"+t2.Text+"'";
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "userregistration_table");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["user"] = user;
            Response.Redirect("user/userhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password')</script>");
        }
        con.Close();
    }


   
   
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        con.Open();
        Response.Redirect("~/MainMasterAspx.aspx");
        con.Close();
    }
}


