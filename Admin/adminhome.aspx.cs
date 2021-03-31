using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Data;
using System.IO;

public partial class Admin_adminhome : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        SqlCommand cmd;
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvrow = (GridViewRow)(sender as Control).Parent.Parent;
        con.Open();
        cmd = new SqlCommand("update companyregistration_table set status='Approved' where [cid]=@cid", con);
        cmd.Parameters.Add("@cid", SqlDbType.Int).Value = GridView1.DataKeys[gr.RowIndex].Value;
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("approvecompany.aspx");
        }
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        SqlCommand cmd;
        LinkButton chk = (LinkButton)sender;
        GridViewRow gr = (GridViewRow)chk.Parent.Parent;
        GridViewRow gvrow = (GridViewRow)(sender as Control).Parent.Parent;
        con.Open();
        cmd = new SqlCommand("update companyregistration_table set status='Rejected' where [cid]=@cid", con);
        cmd.Parameters.Add("@cid", SqlDbType.Int).Value = GridView1.DataKeys[gr.RowIndex].Value;
        if (cmd.ExecuteNonQuery() > 0)
        {
            Response.Redirect("approvecompany.aspx");
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