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
public partial class companylogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
        con.Open();
        String companyid = cid.Text.Trim();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from companyregistration_table where cid='" + cid.Text + "' and password='" + pass.Text + "' and status='Approved'";
        cmd.ExecuteNonQuery();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds, "companyregistration_table");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["companyid"] = companyid;
            Response.Redirect("Company/companyhome.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid username or password ')</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("MainMasterAspx.aspx");
    }
}