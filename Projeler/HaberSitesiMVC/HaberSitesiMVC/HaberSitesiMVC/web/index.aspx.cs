using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;
using System.Xml;

namespace habersitesi
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=.;Initial Catalog=haberproject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["KULLANICI"] != null)
            {
                // Label2.Visible = true; //
                Label1.Visible = false;
                Label3.Visible = false;
                Label2.Text = "" + Session["KULLANICI"].ToString();
                Label2.Visible = true;
                LinkButton1.Visible = true;

            }
             else
            {
                Label2.Text = "null";
            }


            todaydatetext.Text = DateTime.Today.ToString("dd-MM-yyyy");

        

            

            XmlDocument xmlVerisi = new XmlDocument();
            xmlVerisi.Load("http://www.tcmb.gov.tr/kurlar/today.xml");

            XmlDocument xmlVerisi2 = new XmlDocument();
           

            decimal dolar = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "USD")).InnerText.Replace('.', ','));
            decimal australia = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "AUD")).InnerText.Replace('.', ','));
            decimal sterlin = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "GBP")).InnerText.Replace('.', ','));
            decimal Euro = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "EUR")).InnerText.Replace('.', ','));
  

          
            sterlintext.Text = "GBR " + sterlin.ToString();
            australiatext.Text = "AUD " + australia.ToString();
            dolartext.Text = "USD " + dolar.ToString(); 
            eurotext.Text = "EUR " + Euro.ToString();


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("index.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "")

            { 
                // HABERLER
                if ((TextBox1.Text=="isviçre") || (TextBox1.Text == "İsviçre"))
                {
                    Response.Redirect("sondakika/isvicre.aspx");
                }
                else if((TextBox1.Text=="avrupa") || (TextBox1.Text == "Avrupa"))
                {
                    Response.Redirect("sondakika/isvicre.aspx");
                }
                else if ((TextBox1.Text == "saatçi") || (TextBox1.Text == "Saatçi"))
                {
                    Response.Redirect("sondakika/isvicre.aspx");
                }
                else if ((TextBox1.Text == "futbolcu") || (TextBox1.Text == "Futbolcu"))
                {
                    Response.Redirect("sondakika/isvicre.aspx");
                }
                else if ((TextBox1.Text == "volkswagen") || (TextBox1.Text == "Volkswagen"))
                {
                    Response.Redirect("haberler/vw.aspx");
                }
                else if ((TextBox1.Text == "araba") || (TextBox1.Text == "Araba"))
                {
                    Response.Redirect("haberler/vw.aspx");
                }
                else if ((TextBox1.Text == "araç") || (TextBox1.Text == "Araç"))
                {
                    Response.Redirect("haberler/vw.aspx");
                }
                else if ((TextBox1.Text == "çin") || (TextBox1.Text == "Çin"))
                {
                    Response.Redirect("haberler/chinasandstorm.aspx");
                }
                else if ((TextBox1.Text == "kum fırtınası") || (TextBox1.Text == "Kum fırtınası"))
                {
                    Response.Redirect("haberler/chinasandstorm.aspx");
                }
                else if ((TextBox1.Text == "felaket") || (TextBox1.Text == "Felaket"))
                {
                    Response.Redirect("haberler/chinasandstorm.aspx");
                }
                else if ((TextBox1.Text == "cin") || (TextBox1.Text == "Cin"))
                {
                    Response.Redirect("haberler/chinasandstorm.aspx");
                }
                else if ((TextBox1.Text == "tinder") || (TextBox1.Text == "Tinder"))
                {
                    Response.Redirect("haberler/tinder.aspx");
                }
                else if ((TextBox1.Text == "buluşma") || (TextBox1.Text == "Buluşma"))
                {
                    Response.Redirect("haberler/tinder.aspx");
                }
                else if ((TextBox1.Text == "buluşma uygulaması") || (TextBox1.Text == "Buluşma uygulaması"))
                {
                    Response.Redirect("haberler/tinder.aspx");
                }
                else if ((TextBox1.Text == "dating") || (TextBox1.Text == "Dating"))
                {
                    Response.Redirect("haberler/tinder.aspx");
                }
                else if ((TextBox1.Text == "uygulama") || (TextBox1.Text == "Uygulama"))
                {
                    Response.Redirect("haberler/tinder.aspx");
                }
                //popüler
                else if ((TextBox1.Text == "korona") || (TextBox1.Text == "Korona"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "korona virüs") || (TextBox1.Text == "Korona virüs"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "corona") || (TextBox1.Text == "Corona"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "covid") || (TextBox1.Text == "Covid"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "19") || (TextBox1.Text == "19"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "virüs") || (TextBox1.Text == "Virüs"))
                {
                    Response.Redirect("hotnews/coronavirus.aspx");
                }
                else if ((TextBox1.Text == "gazete") || (TextBox1.Text == "Gazete"))
                {
                    Response.Redirect("hotnews/gazete.aspx");
                }
                else if ((TextBox1.Text == "haber") || (TextBox1.Text == "Haber"))
                {
                    Response.Redirect("hotnews/gazete.aspx");
                }
                else if ((TextBox1.Text == "site") || (TextBox1.Text == "Site"))
                {
                    Response.Redirect("hotnews/gazete.aspx");
                }
                else if ((TextBox1.Text == "daktilo") || (TextBox1.Text == "Daktilo"))
                {
                    Response.Redirect("hotnews/gazete.aspx");
                }
                else if ((TextBox1.Text == "aşı") || (TextBox1.Text == "Aşı"))
                {
                    Response.Redirect("hotnews/youtubevaccine.aspx");
                }
                else if ((TextBox1.Text == "youtube") || (TextBox1.Text == "Youtube"))
                {
                    Response.Redirect("hotnews/youtubevaccine.aspx");
                }
                else if ((TextBox1.Text == "sil") || (TextBox1.Text == "Sil"))
                {
                    Response.Redirect("hotnews/youtubevaccine.aspx");
                }
                else if ((TextBox1.Text == "windows") || (TextBox1.Text == "Windows"))
                {
                    Response.Redirect("hotnews/windows.aspx");
                }
                else if ((TextBox1.Text == "microsoft") || (TextBox1.Text == "Microsoft"))
                {
                    Response.Redirect("hotnews/windows.aspx");
                }
                else if ((TextBox1.Text == "email") || (TextBox1.Text == "Email"))
                {
                    Response.Redirect("hotnews/windows.aspx");
                }
                else if ((TextBox1.Text == "ingiltere") || (TextBox1.Text == "İngiltere"))
                {
                    Response.Redirect("hotnews/windows.aspx");
                }
                //sondakika
                else if ((TextBox1.Text == "ali koç") || (TextBox1.Text == "Ali koç"))
                {
                    Response.Redirect("sondakika/alikoc.aspx");
                }
                else if ((TextBox1.Text == "fenerbahçe") || (TextBox1.Text == "Fenerbahçe"))
                {
                    Response.Redirect("sondakika/alikoc.aspx");
                }
                else if ((TextBox1.Text == "koç holding") || (TextBox1.Text == "Koç holding"))
                {
                    Response.Redirect("sondakika/alikoc.aspx");
                }
                else if ((TextBox1.Text == "otomotiv") || (TextBox1.Text == "otomotiv"))
                {
                    Response.Redirect("sondakika/alikoc.aspx");
                }

                else if ((TextBox1.Text == "bebek") || (TextBox1.Text == "Bebek"))
                {
                    Response.Redirect("sondakika/bebek.aspx");
                }
                else if ((TextBox1.Text == "anne") || (TextBox1.Text == "Anne"))
                {
                    Response.Redirect("sondakika/bebek.aspx");
                }
                else if ((TextBox1.Text == "gözaltı") || (TextBox1.Text == "Gözaltı"))
                {
                    Response.Redirect("sondakika/bebek.aspx");
                }
                else if ((TextBox1.Text == "şerefsizlik") || (TextBox1.Text == "Şerefsizlik"))
                {
                    Response.Redirect("sondakika/bebek.aspx");
                }
                else if ((TextBox1.Text == "benzin") || (TextBox1.Text == "Benzin"))
                {
                    Response.Redirect("sondakika/benzin.aspx");
                }
                else if ((TextBox1.Text == "akaryakıt") || (TextBox1.Text == "Akaryakıt"))
                {
                    Response.Redirect("sondakika/benzin.aspx");
                }
                else if ((TextBox1.Text == "yakıt") || (TextBox1.Text == "Yakıt"))
                {
                    Response.Redirect("sondakika/benzin.aspx");
                }
                else if ((TextBox1.Text == "gaz") || (TextBox1.Text == "Gaz"))
                {
                    Response.Redirect("sondakika/benzin.aspx");
                }
                else if ((TextBox1.Text == "deniz kirlilği") || (TextBox1.Text == "Deniz kirliliği"))
                {
                    Response.Redirect("sondakika/denizkirliligi.aspx");
                }
                else if ((TextBox1.Text == "pendik") || (TextBox1.Text == "Pendik"))
                {
                    Response.Redirect("sondakika/denizkirliligi.aspx");
                }
                else if ((TextBox1.Text == "doğa") || (TextBox1.Text == "Doğa"))
                {
                    Response.Redirect("sondakika/denizkirliligi.aspx");
                }
                else if ((TextBox1.Text == "deniz") || (TextBox1.Text == "Deniz"))
                {
                    Response.Redirect("sondakika/denizkirliligi.aspx");
                }
                else if ((TextBox1.Text == "köpek") || (TextBox1.Text == "Köpek"))
                {
                    Response.Redirect("sondakika/dutch.aspx");
                }
                else if ((TextBox1.Text == "polis") || (TextBox1.Text == "Polis"))
                {
                    Response.Redirect("sondakika/dutch.aspx");
                }
                else if ((TextBox1.Text == "kurt") || (TextBox1.Text == "Kurt"))
                {
                    Response.Redirect("sondakika/dutch.aspx");
                }
                else if ((TextBox1.Text == "zararlı madde") || (TextBox1.Text == "Zararlı madde"))
                {
                    Response.Redirect("sondakika/dutch.aspx");
                }
                else if ((TextBox1.Text == "kenan sofoğlu") || (TextBox1.Text == "Kenan sofoğlu"))
                {
                    Response.Redirect("sondakika/kenansof.aspx");
                }
                else if ((TextBox1.Text == "motor") || (TextBox1.Text == "Motor"))
                {
                    Response.Redirect("sondakika/kenansof.aspx");
                }
                else if ((TextBox1.Text == "yarış") || (TextBox1.Text == "Yarış"))
                {
                    Response.Redirect("sondakika/kenansof.aspx");
                }
                else if ((TextBox1.Text == "f1") || (TextBox1.Text == "F1"))
                {
                    Response.Redirect("sondakika/kenansof.aspx");
                }
                else if ((TextBox1.Text == "formula") || (TextBox1.Text == "Formula"))
                {
                    Response.Redirect("sondakika/kenansof.aspx");
                }

                // site içi
                else if ((TextBox1.Text == "son dakika") || (TextBox1.Text == "Son dakika"))
                {
                    Response.Redirect("index.aspx#sondakika");
                }
                else if ((TextBox1.Text == "haberler") || (TextBox1.Text == "Haberler"))
                {
                    Response.Redirect("index.aspx#haberler");
                }
                //hakkimizda
                else if ((TextBox1.Text == "hakkımızda") || (TextBox1.Text == "Hakkımızda"))
                {
                    Response.Redirect("hakkimizda.aspx");
                }
                else if ((TextBox1.Text == "biz kimiz") || (TextBox1.Text == "Biz kimiz"))
                {
                    Response.Redirect("hakkimizda.aspx");
                }
                else if ((TextBox1.Text == "bilgi") || (TextBox1.Text == "Bilgi"))
                {
                    Response.Redirect("hakkimizda.aspx");
                }
                else if ((TextBox1.Text == "haber portal") || (TextBox1.Text == "Haber portal"))
                {
                    Response.Redirect("hakkimizda.aspx");
                }
                // iletişim

                else if ((TextBox1.Text == "iletişim") || (TextBox1.Text == "İletişim"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                else if ((TextBox1.Text == "mail") || (TextBox1.Text == "Mail"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                else if ((TextBox1.Text == "whatsapp") || (TextBox1.Text == "Whatsapp"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                else if ((TextBox1.Text == "numara") || (TextBox1.Text == "Numara"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                else if ((TextBox1.Text == "haber yolla") || (TextBox1.Text == "Haber yolla"))
                {
                    Response.Redirect("iletisim.aspx");
                }

                // login
                else if ((TextBox1.Text == "giriş yap") || (TextBox1.Text == "Giriş yap"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                else if ((TextBox1.Text == "login") || (TextBox1.Text == "Login"))
                {
                    Response.Redirect("iletisim.aspx");
                }
                // register
                else if ((TextBox1.Text == "kayıt ol") || (TextBox1.Text == "Kayıt ol"))
                {
                    Response.Redirect("register.aspx");
                }
                else if ((TextBox1.Text == "register") || (TextBox1.Text == "register"))
                {
                    Response.Redirect("register.aspx");
                }

                else
                {
                    Response.Redirect("404.aspx");
                }

            }
        }
    }
}