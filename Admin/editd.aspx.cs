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

public partial class Admin_editd : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["admin"] == null)
        {
            Response.Redirect("~/login.aspx");
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox1.Enabled = false;
        ModalPopupExtender1.Show();
    }
    protected void Save(object sender, EventArgs e)
    {
        string updatedata = "Update diseasedetails set diseasename='" + TextBox2.Text + "',symptoms='" + TextBox3.Text + "',remedies='" + TextBox4.Text + "' where id='" + TextBox1.Text + "'";
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = updatedata;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label1.Text = "Data updated successfully";
        SqlDataSource1.DataBind();
        GridView1.DataSource = null;
        GridView1.DataSourceID = "SqlDataSource1";
        GridView1.SelectedIndex = -1;

        con.Close();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from diseasedetails where id='" + TextBox1.Text + "'", con);
        cmd.ExecuteNonQuery();

        Label1.Text = "Data deleted";

        con.Close();
        //Response.Write("<script type='text/javascript' language='javascript'> alert('data deleted')</script>");



        //Response.Redirect("editdisease.aspx");
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("~/login.aspx");
    }
       
}