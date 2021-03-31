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
public partial class companyregistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=AyurJeeva;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected Boolean checkid()
    {
        Boolean idavailable = false;
        string myquery = "select * from companyregistration_table where cid='" + companyid.Text + "'";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            idavailable = true;
        }
        con.Close();
        return idavailable;

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (checkid() == true)
        {
            Label1.Text = "Your ID is Already Registered with us";

        }
        else
        {
            if (pic.HasFile)
            {
                
                    string filename = pic.PostedFile.FileName;
                    string filepath = "~/uploads/" + pic.FileName;
                    pic.PostedFile.SaveAs(Server.MapPath("~/uploads/") + filename);

                    con.Open();
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO [AyurJeeva].[dbo].[companyregistration_table] ([cid],[companyname],[photo],[address],[district],[regdate],[description],[password],[status]) VALUES ('" + companyid.Text + "','" + companyname.Text + "','" + filepath + "','" + address.Text + "','" + district.SelectedItem + "','" + rdate.Text + "','" + description.Text + "','" + passsword.Text + "','Pending')", con);

                    int t=cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        //Response.Write("<script type='text/javascript' language='javascript'> alert('Registration Successfull')</script>");

                        
                        Label3.Text = "Registered Successfully";
                        //Response.Redirect("companyregistration.aspx");
                        companyid.Text = "";
                       companyname.Text = "";
                       pic.Dispose();
                       district.ClearSelection();
                       rdate.Text = "";
                        address.Text = "";
                        description.Text = "";
                        passsword.Text = "";
                        rpass.Text = "";


                    }
                    con.Close();
                    

               
             

            }
            else
            {
                Label2.Text = "please choose photo";
            }

        }
    }
}