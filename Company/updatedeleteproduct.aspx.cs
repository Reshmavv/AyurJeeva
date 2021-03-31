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

public partial class Company_updatedeleteproduct : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBox1.Text = GridView1.SelectedRow.Cells[0].Text;
        TextBox2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox5.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox7.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBox6.Text = GridView1.SelectedRow.Cells[7].Text;
        TextBox1.Enabled = false;
        ModalPopupExtender1.Show();

    }
    protected void Save(object sender, EventArgs e)
    {
        string updatedata = "Update addproduct set brand='" + TextBox2.Text + "',productname='" + TextBox3.Text + "',mrp='" + TextBox4.Text + "',ingredients='" + TextBox5.Text + "',distributors='" + TextBox7.Text + "',description='" + TextBox6.Text + "' where id='" + TextBox1.Text + "'";
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
        SqlCommand cmd = new SqlCommand("delete from addproduct where id='" + TextBox1.Text + "'", con);
        cmd.ExecuteNonQuery();

        Label1.Text = "Data deleted";

        con.Close();
    }
}