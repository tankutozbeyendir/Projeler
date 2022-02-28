<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="habersitesi.WebForm6" %>

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
    <link rel="stylesheet" href="scripts/404.css" type="text/css">
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
      	<!-- header -->
        <header id="anasayfa">
        	<div class="top-top">
        		<div class="login">
        			<a href="login.aspx" id="log" >

                        <asp:Label ID="Label1" runat="server" cursor="pointer" style="margin-left:10px;" Visible="true">Giriş Yap</asp:Label></a>
                         <asp:Label ID="Label2" runat="server" style="margin-left:10px; text-transform:uppercase;" Text="Label" Visible="False" BorderStyle="NotSet" BorderColor="#E7E3E2" Font-Names="Raleway" Font-Size="Small" Font-Bold="true" Font-Underline="False" ForeColor="#E7E3E2"></asp:Label>
                                                                       <br />
                                                                       <br />
                    <form runat="server" class="search-data" method="post" action="#" style="border-style: none;  padding-left:10px; margin-top:1px;">


                        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Visible="False" Style="margin-left:10px;" cssClass="linkButtonLogOut" Font-Size="Smaller"  Font-Names="Quicksand" OnClick="LinkButton1_Click">Çıkış yap</asp:LinkButton>
 
                    
                        </form>
        		</div>
        		

        		<div class="information-2">
        			<p><i class="fab fa-whatsapp"></i>   05356338732</p>
        		</div>

        	</div>
            <div class = "navigation-container">

                <div class = "top-head">
                    <div class = "web-name">
                       <img src="img/logoo.png">
                    </div>

                    <div class = "ham-btn">
                        <span>
                            <i class = "fas fa-bars"></i>
                        </span>
                    </div>

                    <div class = "times-btn">
                        <span>	
                            <i class = "fas fa-times"></i>
                        </span>
                    </div>
                </div>

                <!-- nav bar -->

                <div class = "nav-bar" id = "nav-bar">
                    <nav>

                        <ul>
                            <li><a href = "index.aspx"><i class="fas fa-home"></i> Anasayfa</a></li>
                            <li><a href = "index.aspx#sondakika"><i class="far fa-newspaper"></i> Son dakika</a></li>
                            <li><a href = "index.aspx#haberler"><i class="far fa-newspaper"></i> Haberler</a></li>
                            <li><a href = "https://www.youtube.com"><i class="fas fa-wifi"></i> Canlı yayın</a></li>
                            <li><a href = "hakkimizda.aspx"><i class="far fa-address-card"></i> Hakkımızda</a></li>
                            <li><a href = "iletisim.aspx"><i class="far fa-id-card"></i> İletişim</a></li>
                        </ul>
                         
                    </nav>
                    
                
                </div>



                <!--social icons -->
                <div class = "social-icons">
                    <ul>
                        <li>
                            <a href= "https://www.facebook.com"><i class = "fab fa-facebook"></i></a>
                        </li>
                        <li>
                            <a href= "https://www.twitter.com"><i class = "fab fa-twitter"></i></a>
                        </li>
                        <li>
                            <a href= "https://www.instagram.com"><i class = "fab fa-instagram"></i></a>
                        </li>
                        <li>
                            <a href= "https://www.youtube.com"><i class = "fab fa-youtube"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </header>


        <section>
            <div class="about-section">
                <div class="inner-container">
                    <h1>404 Url Geçersiz</h1>
                    <br />
                    <br />
                    <p class="text">
                    Üzgünüz, aradığınız öğe bulunamadı.
                    </p>
                
            </div>
        </div>
        </section>

        <footer>
        	<div class="footer-container">
        		<div class="footer-left">
        			<h2>HABER PORTAL</h2>
        			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        			tempor incididunt ut labore et dolore magna aliqua.</p>
        		</div>

        		<div class="footer-right">
        			<h2>Size ulaşalım!</h2>
        			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
        			<i class="fas fa-file-signature"></i><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" Font-Names="Exo" ForeColor="#E6E6E3" href="iletisim.aspx">İletişim sayfası</asp:HyperLink>
        		</div>

        	</div>
        	<p>Copyright &copy; 2021 tüm hakları saklıdır |  Tankut Özbeyendir, Mert Orak</p>
        </footer>

            <div class="loader-wrapper">
          <span class="loader"><span class="loader-inner"></span></span>
        </div>
        <!-- javascript cdn-->
		<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js"></script>
        <script src="main.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="scripts/main.js"></script>
        <script type="text/javascript" src="scripts/preloadhaber.js"></script>
</body>
</html>
