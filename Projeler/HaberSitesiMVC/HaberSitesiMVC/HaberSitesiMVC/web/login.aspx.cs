using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace habersitesi
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=haberproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
    
    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlDataAdapter sda = new SqlDataAdapter("Select count(*) From TBLLOGIN Where KULLANICI = '" + TextBox2.Text + "' and SIFRE= '"+ TextBox3.Text + "'" , baglanti);
             DataTable dt = new DataTable();
             sda.Fill(dt);
             if(dt.Rows[0][0].ToString() == "1")
             {
                 Session["KULLANICI"] = TextBox2.Text;
                 Response.Redirect("index.aspx");
             }
             else
             {
                 Label1.Visible = true;
                 Label1.Text = "Yanlış kullanıcı adı veya şifre";
             }
            baglanti.Close();  
        }
    }
}