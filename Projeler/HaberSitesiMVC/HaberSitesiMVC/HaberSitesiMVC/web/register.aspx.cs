using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace habersitesi
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=haberproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into TBLLOGIN" + "(EMAIL, KULLANICI, SIFRE) values (@EMAIL, @KULLANICI, @SIFRE)", baglanti);
            komut.Parameters.AddWithValue("@EMAIL", TextBox1.Text);
            komut.Parameters.AddWithValue("@KULLANICI", TextBox2.Text);
            komut.Parameters.AddWithValue("@SIFRE", TextBox3.Text);
            komut.ExecuteNonQuery();


            Label1.Text = "Başarı ile kayıt olundu";
            Label1.Visible = true;
            HyperLink1.Visible = true;
            

            baglanti.Close();
        }
    }
}