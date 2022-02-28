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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=haberproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into CONTACT" + "(ISIM, EMAIL, MESAJ) values (@ISIM, @EMAIL, @MESAJ)", baglanti);
            komut.Parameters.AddWithValue("@ISIM", TextBox1.Text);
            komut.Parameters.AddWithValue("@EMAIL", TextBox2.Text);
            komut.Parameters.AddWithValue("@MESAJ", TextBox3.Text);
            komut.ExecuteNonQuery();
            Label1.Text = "Mesajınız iletildi.";
            Label1.Visible = true;
        }
    }
}