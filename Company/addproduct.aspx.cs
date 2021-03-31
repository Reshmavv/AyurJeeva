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

public partial class Company_addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");
        if (pimage.HasFile)
        {
            string filename = pimage.PostedFile.FileName;
            string filepath = "~/uploads/" + pimage.FileName;
            pimage.PostedFile.SaveAs(Server.MapPath("~/uploads/") + filename);

            con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [AyurJeeva].[dbo].[addproduct] ([cid],[brand],[productname],[image],[mrp],[ingredients],[distributors],[description]) VALUES ('" + Session["companyid"].ToString() + "','" + brand.Text + "','" + pname.Text + "','" + filepath + "','" + mrp.Text + "','" + ingredients.Text + "','" + distributor.Text + "','" + description.Text + "')", con);

            int t = cmd.ExecuteNonQuery();
            con.Close();
            if (t > 0)
            {
                //Response.Write("<script type='text/javascript' language='javascript'> alert('Product added successfully')</script>");
                // Response.Write("<script>alert('Added succesfully')</script>");
                //Response.Redirect("addproduct.aspx");
                Label9.Text = "Product added successfully";
                brand.Text = "";
                pname.Text = "";
                pimage.Dispose();
                mrp.Text = "";
                ingredients.Text = "";
                distributor.Text = "";
                description.Text = "";

            }
            


        }
        else
        {
            Label7.Text = "Please choose photo";
        }
    }
    protected void clear_Click(object sender, EventArgs e)
    {
        brand.Text = "";
       // pname.Text = "";
      
        //mrp.Text = "";
       // ingredients.Text="";
        description.Text = "";
        



    }
}
