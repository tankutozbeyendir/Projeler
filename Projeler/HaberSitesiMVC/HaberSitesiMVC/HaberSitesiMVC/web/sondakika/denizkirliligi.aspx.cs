using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;

namespace habersitesi.sondakika
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=haberproject;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["KULLANICI"] != null)
            {
                // Label2.Visible = true; //
                Label1.Visible = false;
                Label2.Text = "" + Session["KULLANICI"].ToString();
                Label2.Visible = true;
                LinkButton1.Visible = true;

            }
            else
            {
                Label2.Text = "null";
            }



        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("denizkirliligi.aspx");
        }
    }
}