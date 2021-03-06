<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="habersitesi.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="author" content="Tankut Özbeyendir, Mert Orak">
    <meta name="keywords" content="habersitesi, blog, news, haberler, siyaset, bilim, yazılım">
    <meta name="description" content="Haber sitesi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <link rel="icon" href="img/fav.png" type="image/x-icon"/>
    <!-- css-->
    <link rel="stylesheet" href="scripts/contact.css" type="text/css">
    <!-- google fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200;500&family=Quicksand:wght@300;500&family=Roboto:wght@100;400;500;900&family=Shippori+Mincho:wght@400;600&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@800&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Exo:wght@200&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Julius+Sans+One&display=swap" rel="stylesheet">
	<!-- font awesome -->
    <script src="https://kit.fontawesome.com/a981a7918e.js" crossorigin="anonymous"></script>
    <title>Haber Portal Sitesi | BANDIRMA MYÖ</title>

</head>
<body>
         
        <!--contact-form-container------------------->
    <section id="contact">
    <!--socail----------->
    <div class="social">
    <!--icons--------->
    <a href="#"><i class="fab fa-facebook-f"></i></a>
    <a href="#"><i class="fab fa-twitter"></i></a>
    <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-youtube"></i></a>
    </div>
    <!--contact-box------------->
    <div class="contact-box">
    <!--heading---------->
    <div class="c-heading">
    <h1>Haber <span>Portal</span></h1> 
    <p>Sorularınız ve iletmek istedikleriniz için bize ulaşın!</p>
    </div>
    <!--inputs------------------>
    <div class="c-inputs">
    <form runat="server" method="post" action="#">
    <!-- <input type="text" placeholder="İsim Soyisim"/>    -->
   <!-- <input type="email" placeholder="admin@haberportal.com"/> -->
    <!-- <textarea name="message" placeholder="Mesajınız"></textarea> -->
    <!--sumbit-btn----------->
    <!-- <button>GÖNDER</button> -->
        <asp:TextBox ID="TextBox1" runat="server" CssClass="inputClass" Font-Names="Montserrat" Font-Size="Small" placeholder="İsim soyisim"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="inputClass" Font-Names="Montserrat" Font-Size="Small" placeholder="admin@haberportal.com"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server"  CssClass="textAreaClass"  placeholder="Mesajınız(100 karakter)" MaxLength="100" Font-Names="Montserrat" Font-Size="Small"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" style="cursor:pointer;" Text="GÖNDER" Font-Names="Montserrat" Font-Size="Small" Font-Bold="true" CssClass="ButtonClass"  OnClick="Button1_Click"  />
    </form>

    </div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Size="Small" ForeColor="#E7E3E2" Font-Names="Montserrat"></asp:Label>
            <a href="index.aspx"><button>Anasayfaya Dön</button></a>

    </div>

    <!--map------------------->
    <div class="map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3616.057394474027!2d27.955485205149603!3d40.34834180224305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x19f628c15549067c!2sBand%C4%B1rma%20Onyedi%20Eyl%C3%BCl%20%C3%9Cniversitesi%20Band%C4%B1rma%20Meslek%20Y%C3%BCksekokulu!5e0!3m2!1str!2str!4v1616064069532!5m2!1str!2str" width="600" height="450" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
    </div>
        
   
    </section>

       <div class="loader-wrapper">
          <span class="loader"><span class="loader-inner"></span></span>
        </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="scripts/preloadhaber.js"></script>
</body>
</html>
