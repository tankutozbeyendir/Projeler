<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="habersitesi.WebForm3" %>

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
    <link rel="stylesheet" href="scripts/main.css" type="text/css">
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

<body class="loading">


     	<!-- header -->
        <header id="anasayfa">
        	<div class="top-top">
        		<div class="login">
        			   <a href="login.aspx" id="log" ><asp:Label ID="Label1" runat="server" cursor="pointer" style="margin-left:10px;" Visible="true">Giriş Yap</asp:Label></a>
                       <a href="register.aspx" id="log"><asp:Label ID="Label3" runat="server" cursor="pointer" style="margin-left:10px;" Visible="true">Kayıt ol</asp:Label></a>
                        <asp:Label ID="Label2" runat="server" style="margin-left:10px; text-transform:uppercase;" Text="Label" Visible="False" BorderStyle="NotSet" BorderColor="#E7E3E2" Font-Names="Raleway" Font-Size="Small" Font-Bold="true" Font-Underline="False" ForeColor="#E7E3E2"></asp:Label>
                    <form runat="server" class="search-data" method="post" action="#" style="border-style: none;  padding-left:10px; margin-top:1px;">
                            <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Visible="False" cssClass="linkButtonLogOut" Font-Size="Smaller" Style="margin-left:10px;"  Font-Names="Quicksand" OnClick="LinkButton1_Click">Çıkış yap</asp:LinkButton>

                        <br />
                        <br />
                        <asp:TextBox ID="TextBox1"  required="" placeholder="ne aramak istemiştiniz?"
                        style="height: 40px;
                        width: 250px;
                        padding: 0 10px;
                        color: #fff;
                        font-weight: 500;
                        background: none;
                        border: none;
                        font-family: 'Quicksand', sans-serif;
                        height: 40px;
                        background: #252525;
                        min-width: 200px!important;
                        border: 1px solid rgba(155,155,155,0.2);
                        float: left;
                        outline: none;
                        
                        "
                        runat="server"  MaxLength="25" CssClass="aramainput"></asp:TextBox>

                	    <asp:Button ID="Button1" runat="server" CssClass="searchButton" Text="Ara" 
                     
                        
                        
                         OnClick="Button1_Click" 
                         />

                                		
                       
                        </form>
        		</div>


                 <div class="top-info-class" id="top-info" style="margin-top:80px; margin-right:130px; width:1120px; height:40px;">
                     <i class="fas fa-calendar-week" style="padding:10px;"></i><asp:Label Text="text" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2);   width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" runat="server" ID="todaydatetext" Font-Names="Oswald" ForeColor="#F9F9F9"/> 
                     <i class="fas fa-cloud" style="padding:10px;"></i><asp:Label Text="Istanbul 23°" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" runat="server" ID="weathercondition" Font-Names="Oswald" ForeColor="#F9F9F9"/>
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Amerikan Doları</span></i></div><asp:Label Text="text" runat="server" ID="dolartext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#f9f9f9" />
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Avustralya Doları</span></i></div><asp:Label Text="text" runat="server"  ID="australiatext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2);width:10vh; height:4vh; ; position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#f9f9f9"/>
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">Euro</span></i></div><asp:Label Text="text" runat="server"  ID="eurotext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2);width:10vh; height:4vh; position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#f9f9f9"/>
                     <div class="tooltip"><i class="fas fa-exchange-alt" style="padding:10px;"><span class="tooltiptext">İngiliz Sterlini</span></i></div><asp:Label Text="text" runat="server"  ID="sterlintext" style="border-bottom:1px solid rgba(155,155,155,0.2); border-right:1px solid rgba(155,155,155,0.2); border-top:1px solid rgba(155,155,155,0.2); border-left: 1px solid rgba(155,155,155,0.2); width:10vh; height:4vh;  position:relative; margin-right:5vh;  padding:1vh;" Font-Names="Oswald" ForeColor="#f9f9f9"/>
                 </div>


        		<div class="information-2" style="margin-top:80px; margin-right:50px;">
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
                            <li><a href = "exchange.aspx"><i class="fas fa-exchange-alt"></i> döviz kurları</a></li>
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

        <section class = "banner">
            <div class = "banner-main-content">
                <h2>Dünyada olan olaylardan habersiz kalmayın!</h2>
                <h3>HABER PORTAL</h3>

                <button>
                    <a href = "hakkimizda.aspx">DAHA FAZLA</a>
                </button>

                                                    <h3>EKLENECEK HABERLER</h3>
                <div class = "current-news-head">


                    <h3>Apple gözlükleri, neler bekliyoruz, neler düşünüyoruz<span>EDİTÖR : admin</span></h3>

                    <h3>Elon Musk'ın eski telefon numarasına sahip olmak nasl bir şey?<span>EDİTÖR : admin</span></h3>

                    <h3>Chirss Pratt'ın yanlışlıkla 51 bin email'ı sildiği anı izleyin<span>EDİTÖR : admin</span></h3>

                    <h3>Richard Branson'un dokunulmamış adlı gemisi pazar günü havalanacak<span>EDİTÖR : admin</span></h3>
                </div>
            </div>

            <div class = "banner-sub-content">
                <div class = "hot-topic">
                    <figure><a href="hotnews/gazete.aspx"><img src = "img/hottpc1.jpg" alt = "" class="imghover"/></a></figure>

                    <div class = "hot-topic-content">
                        <h2>Daktilo gazete'den, sanal habercileğe yolculuk</h2>

                        <h3>Haberciliğin evrimi</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "hotnews/gazete.aspx">Habere git</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <figure><a href="hotnews/coronavirus.aspx"><img src = "img/hottpc2.jpg" alt = "" class="imghover"/></a></figure>

                    <div class = "hot-topic-content">
                        <h2>Dünya'nın güncel koronavirüs haberleri ve sayıları</h2>

                        <h3>Koronavirüs ile mücadele</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "hotnews/coronavirus.aspx">Habere git</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <figure><a href="hotnews/windows.aspx"><img src = "img/hottpc3.jpg" alt = "" class="imghover"/></a></figure>

                    <div class = "hot-topic-content">
                        <h2>Windows, ingilterede 6000 email sunucusunun güvende olmadığını söyledi</h2>

                        <h3>Siber güvenlik</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "hotnews/windows.aspx">Habere git</a>
                    </div>
                </div>

                <div class = "hot-topic">
                    <figure><a href="hotnews/youtubevaccine.aspx"><img src = "img/hottpc4.jpg" alt = "" class="imghover"/></a></figure>

                    <div class = "hot-topic-content">
                        <h2>Youtube, koronavirüs aşılarıyla ilgili 60 bin video sildi</h2>

                        <h3>Youtube videoları neden siliyor?</h3>
                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Inventore consequatur nostrum minus iusto fugit unde.</p>
                        <a href = "hotnews/youtubevaccine.aspx">Habere git</a>
                    </div>
                </div>
            </div>
        </section>
        
        <hr>

        <main>
            <section class = "main-container-left" id="haberler">
                <h2>Haberler</h2>
                <div class = "container-top-left">
                    <article>
                        <figure><a href="haberler/vw.aspx"><img src = "img/vw.jpg" alt = "" class="imghover"/></a></figure>

                        <div>
                            <h3>Volkswagen, elektrikli otomobilleri güç bankası haline getirecek sistemini anlattı</h3>

                            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Blanditiis ea sint, nisi rem earum fugit? Facere veritatis sapiente eveniet quibusdam.</p>

                            <a href = "haberler/vw.aspx">Habere git <span>>></span></a>
                        </div>
                    </article>
                </div>

                <div class = "container-bottom-left">
                    <article>
                        <figure><a href="haberler/tinder.aspx"><img src = "img/tinder.jpg" alt = "" class="imghover"/></a></figure>
                        <div>
                            <h3>Tinder, güvenliğiniz için eşleştiğiniz kişinin sabıkasını öğrenme özelliğini getiriyor</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi iure modi animi cupiditate. Explicabo, nihil?</p>

                            <a href = "haberler/tinder.aspx">Habere git <span>>></span></a>
                        </div>
                    </article>

                    <article>
                        <figure><a href="haberler/chinasandstorm.aspx"><img src = "img/china.jpg" alt = "" class="imghover"/></a></figure>
                        <div>
                            <h3>Çin'de Halkın 'Dünyanın Sonu Gelmiş Gibi' Şeklinde Tanımladığı Büyük Bir Kum Fırtınası Yaşanıyor</h3>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Commodi iure modi animi cupiditate. Explicabo, nihil?</p>

                            <a href = "haberler/chinasandstorm.aspx">Habere git <span>>></span></a>
                        </div>
                    </article>
                </div>
            </section>

            <section class = "main-container-right" id="sondakika">
                <h2>Son dakika</h2>
                
                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Pendik ve Kartal sahilindeki kirliliğin sebebi belli oldu: Deniz salyası</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/denizkirliligi.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/denizkirliligi.aspx"><img src = "img/denizkirliligi.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Ali Koç: 2 milyar euroluk Türk otomotiv sektörünün bugüne kadarki en büyük yatırımını gerçekleştireceğiz</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/alikoc.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/alikoc.aspx"><img src = "img/alikoc.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>2 yaşındaki oğluna motosiklet kullandıran Kenan Sofuoğlu'ndan eleştirilere yanıt: Formula-1'e yetiştirmek isterim</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/kenansof.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/kenansof.aspx"><img src = "img/kenansof.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Zehir tacirleri, narkotik köpeğinin koku almaması için uyuşturucu sakladıkları bölgeye benzin dökmüş</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/dutch.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/dutch.aspx"><img src = "img/dutc.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Bebeğini çöpe atıp ölüme sebep olan anne 23 yıl sonra yakalandı! Kadını DNA'sı ele verdi</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/bebek.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/bebek.aspx"><img src = "img/bebek.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>İsviçreli eski futbolcu Lichtsteiner, saat firmasında stajyer olarak işe başladı</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/isvicre.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/isvicre.aspx"><img src = "img/isvicre.jpg" alt = "" class="imghover"/></a></figure>
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Akaryakıtta gizli zamma EPDK tavan fiyat uygulamasıyla son verecek: Fiyatlar 17-20 kuruş inecek</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "sondakika/benzin.aspx">Habere git <span>>></span></a>
                    </div>
                    <figure><a href="sondakika/benzin.aspx"><img src = "img/benzin.jpg" alt = "" class="imghover"/></a></figure>
                </article>
            </section>
        </main>


        <footer>
        	<div class="footer-container">
        		<div class="footer-left">
        			<h2>HABER PORTAL</h2>
        			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        			tempor incididunt ut labore et dolore magna aliqua.</p>
                    <br />
                    <br />
                    <p>admin@haberportal.com</p>
        		</div>

             

        		<div class="footer-right">
        			<h2>Bizimle iletişime geçin!</h2>
        			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                    <i class="fas fa-file-signature"></i><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" Font-Names="Exo" cssClass="iletisim" href="iletisim.aspx">İletişim sayfası</asp:HyperLink>
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
        <script type="text/javascript" src="scripts/mainpreload.js"></script>
</body>
</html>
