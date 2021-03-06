<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="exchange.aspx.cs" Inherits="habersitesi.WebForm7" %>

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
    <link rel="stylesheet" href="scripts/exchange.css" type="text/css" />
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


                        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Visible="False" Style="margin-left:10px;" cssClass="linkButtonLogOut" Font-Size="Smaller" Font-Names="Quicksand" OnClick="LinkButton1_Click">Çıkış yap</asp:LinkButton>
 
                    
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
            <div class="exchange-section">
                <div class="inner-container">
                    <h1>Güncel Döviz Kurları</h1>
                    <p class="text2"><strong style="margin-right:15px;">18.05.2021 Günü Saat 15:30'da</strong> Belirlenen Gösterge Niteliğindeki Türkiye Cumhuriyet Merkez Bankası Kurları</p>


                <div class="exchanges">               
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Amerikan Doları</span></i></div><asp:Label Text="text" runat="server" ID="dolartext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c" />
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Avustralya Doları</span></i></div><asp:Label Text="text" runat="server"  ID="australiatext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2);width:10vh; height:4vh; ; position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Euro</span></i></div><asp:Label Text="text" runat="server"  ID="eurotext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2);width:10vh; height:4vh; position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">İngiliz Sterlini</span></i></div><asp:Label Text="text" runat="server"  ID="sterlintext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>           
                </div>
                <div class="exchanges">               
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Danimarka Kronu</span></i></div><asp:Label Text="text" runat="server"  ID="dantext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">İsveç Kronu</span></i></div><asp:Label Text="text" runat="server"  ID="isvectext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Norveç Kronu</span></i></div><asp:Label Text="text" runat="server"  ID="norvectext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">İsviçre Frangı</span></i></div><asp:Label Text="text" runat="server"  ID="isvicretext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                </div>
                <div class="exchanges">               
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Kuveyt Dinarı</span></i></div><asp:Label Text="text" runat="server"  ID="kuveyttext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Suudi Arabistan Riyalı</span></i></div><asp:Label Text="text" runat="server"  ID="suuditext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Katar Riyalı</span></i></div><asp:Label Text="text" runat="server"  ID="katartext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Iran Riyalı</span></i></div><asp:Label Text="text" runat="server"  ID="irantext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                </div>
                <div class="exchanges">               
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Japon Yeni</span></i></div><asp:Label Text="text" runat="server"  ID="japontext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Çin Yuanı</span></i></div><asp:Label Text="text" runat="server"  ID="cintext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Pakistan Rupisi</span></i></div><asp:Label Text="text" runat="server"  ID="pakistantext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                    <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px; margin-top:20px;"><span class="tooltiptext">Rus Rublesi</span></i></div><asp:Label Text="text" runat="server"  ID="rustext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh; margin-top:20px; padding:1vh;" Font-Names="Oswald" ForeColor="#1c1c1c"/>
                </div>

                    <p class="text">
                     Güncel kur verileri 'http://www.tcmb.gov.tr/' tarafından sağlanmaktadır.
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

        <a href="#anasayfa" id="gotopbtnclickevent" class="gotopbtn"> <i class="fas fa-arrow-up"></i> </a>
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
