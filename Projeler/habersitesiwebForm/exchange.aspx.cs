using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Xml;
using System.Net;
using System.IO;

namespace habersitesi
{
    public partial class WebForm7 : System.Web.UI.Page
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
            



            XmlDocument xmlVerisi = new XmlDocument();
            xmlVerisi.Load("http://www.tcmb.gov.tr/kurlar/today.xml");


            decimal dolar = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "USD")).InnerText.Replace('.', ','));
            decimal australia = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "AUD")).InnerText.Replace('.', ','));
            decimal sterlin = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "GBP")).InnerText.Replace('.', ','));
            decimal Euro = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "EUR")).InnerText.Replace('.', ','));

            decimal danimarka = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "DKK")).InnerText.Replace('.', ','));
            decimal isvec = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "SEK")).InnerText.Replace('.', ','));
            decimal norvec = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "NOK")).InnerText.Replace('.', ','));
            decimal isvicre = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "CHF")).InnerText.Replace('.', ','));

            decimal kuveyt = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "KWD")).InnerText.Replace('.', ','));
            decimal suudi = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "SAR")).InnerText.Replace('.', ','));
            decimal katar = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "QAR")).InnerText.Replace('.', ','));
            decimal iran = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "IRR")).InnerText.Replace('.', ','));

            decimal japon = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "JPY")).InnerText.Replace('.', ','));
            decimal cin = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "CNY")).InnerText.Replace('.', ','));
            decimal pakistan = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "PKR")).InnerText.Replace('.', ','));
            decimal rus = Convert.ToDecimal(xmlVerisi.SelectSingleNode(string.Format("Tarih_Date/Currency[@Kod='{0}']/ForexSelling", "RUB")).InnerText.Replace('.', ','));


            sterlintext.Text = "GBR " + sterlin.ToString();
            australiatext.Text = "AUD " + australia.ToString();
            dolartext.Text = "USD " + dolar.ToString();
            eurotext.Text = "EUR " + Euro.ToString();

            dantext.Text = "DKK " + danimarka.ToString();
            isvectext.Text = "SEK " + isvec.ToString();
            norvectext.Text = "NOK " + norvec.ToString();
            isvicretext.Text = "CHF " + isvicre.ToString();

            kuveyttext.Text = "KWD " + kuveyt.ToString();
            suuditext.Text = "SAR " + suudi.ToString();
            katartext.Text = "QAR " + katar.ToString();
            irantext.Text = "IRR " + iran.ToString();

            japontext.Text = "JPY " + japon.ToString();
            cintext.Text = "CNY " + cin.ToString();
            pakistantext.Text = "PKR " + pakistan.ToString();
            rustext.Text = "RUB " + rus.ToString();

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Clear();
            Response.Cookies.Clear();
            Response.Redirect("index.aspx");
        }
    }
}