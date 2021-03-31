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

public partial class Company_editproduct : System.Web.UI.Page
{
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
        }
        else
        {
            if (Request.QueryString["id"] != null)
            {
                dt = (DataTable)Session["companyid"];
                for (int i = 0; i <= dt.Rows.Count - 1; i++)
                {
                    int sr;
                    int sr1;
                    sr = Convert.ToInt32(dt.Rows[i]["id"].ToString());
                    Label1.Text = Request.QueryString["id"];
                    //Label2.Text = sr.ToString();
                    sr1 = Convert.ToInt32(Label1.Text);
                    if (sr == sr1)
                    {
                        Label1.Text = dt.Rows[i]["id"].ToString();
                        Label2.Text = dt.Rows[i]["brand"].ToString();
                        break;

                    }

                }
            }
        }
    }
}