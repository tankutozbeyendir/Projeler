<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="windows.aspx.cs" Inherits="habersitesi.hotnews.WebForm2" %>

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
    <link rel="stylesheet" href="../scripts/haber.css" type="text/css">
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
    <div class="loader">
        <div></div>
        <div></div>
        <div></div>
        <div></div>
      </div>

      	<!-- header -->
          <header id="anasayfa">
        	<div class="top-top">
        		<div class="login">
        			<a href="../login.aspx" id="log" >

                        <asp:Label ID="Label1" runat="server" cursor="pointer" style="margin-left:10px;" Visible="true">Giriş Yap</asp:Label></a>
                             <asp:Label ID="Label2" runat="server" style="margin-left:10px; text-transform:uppercase;" Text="Label" Visible="False" BorderStyle="NotSet" BorderColor="#E7E3E2" Font-Names="Raleway" Font-Size="Small" Font-Bold="true" Font-Underline="False" ForeColor="#E7E3E2"></asp:Label>
                    <form runat="server" class="search-data" method="post" action="#" style="border-style: none;  padding-left:10px; margin-top:1px;">
                            <br />
                        <asp:LinkButton ID="LinkButton1" runat="server" BorderStyle="None" Visible="False" cssClass="linkButtonLogOut" Font-Size="Smaller"  Font-Names="Quicksand" OnClick="LinkButton1_Click">Çıkış yap</asp:LinkButton>

                        </form>
        		</div>
        		

        		<div class="information-2">
        			<p><i class="fab fa-whatsapp"></i>   05356338732</p>
        		</div>

        	</div>
            <div class = "navigation-container">

                <div class = "top-head">
                    <div class = "web-name">
                       <img src="../img/logoo.png">
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
                            <li><a href = "../index.aspx"><i class="fas fa-home"></i> Anasayfa</a></li>
                            <li><a href = "../index.aspx#sondakika"><i class="far fa-newspaper"></i> Son dakika</a></li>
                            <li><a href = "../index.aspx#haberler"><i class="far fa-newspaper"></i> Haberler</a></li>
                            <li><a href = "https://www.youtube.com"><i class="fas fa-wifi"></i> Canlı yayın</a></li>
                            <li><a href = "../hakkimizda.aspx"><i class="far fa-address-card"></i> Hakkımızda</a></li>
                            <li><a href = "../iletisim.aspx"><i class="far fa-id-card"></i> İletişim</a></li>
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

        <main>

        <section class="haber">
            <div class="reklamalani"><img src="../img/unnamed.jpg" id="reklam"></div>
        	<div class="haberalani">
        	<h6>Microsoft, ingilterede 3000 email sunucusunun güvende olmadığını söyledi</h6>
        	<div class="tarihsaat"><p><i class="far fa-clock"></i>14.03.2021 15:21</p></div> <!-- tarih saat -->
        	<img src="../img/hottpc3.jpg">
        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>



        	<img src="../img/microsoft.jpg">

        	<h6>Yetkililer, 3.000'den fazla İngiltere e-posta sunucusunun küresel Microsoft Exchange e-posta kusurundan dolayı risk altında olduğuna inanıyor.</h6>
        	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
        	tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
        	quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
        	consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
        	cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
        	proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                

        	</div>
      		</p>
        
        </section>   

        <section class = "main-container-right" id="sondakika">
                <h2>Son dakika</h2>
                
                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Pendik ve Kartal sahilindeki kirliliğin sebebi belli oldu: Deniz salyası</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/denizkirliligi.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/denizkirliligi.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Ali Koç: 2 milyar euroluk Türk otomotiv sektörünün bugüne kadarki en büyük yatırımını gerçekleştireceğiz</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/alikoc.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/alikoc.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>2 yaşındaki oğluna motosiklet kullandıran Kenan Sofuoğlu'ndan eleştirilere yanıt: Formula-1'e yetiştirmek isterim</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/kenansof.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/kenansof.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Zehir tacirleri, narkotik köpeğinin koku almaması için uyuşturucu sakladıkları bölgeye benzin dökmüş</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/dutch.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/dutc.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Bebeğini çöpe atıp ölüme sebep olan anne 23 yıl sonra yakalandı! Kadını DNA'sı ele verdi</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/bebek.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/bebek.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>İsviçreli eski futbolcu Lichtsteiner, saat firmasında stajyer olarak işe başladı</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/isvicre.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/isvicre.jpg">
                </article>

                <article>
                    <h4>son dakika </h4>
                    <div>
                        <h2>Akaryakıtta gizli zamma EPDK tavan fiyat uygulamasıyla son verecek: Fiyatlar 17-20 kuruş inecek</h2>

                        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Id, repellendus?</p>

                        <a href = "../sondakika/benzin.aspx">Habere git <span>>></span></a>
                    </div>
                    <img src = "../img/benzin.jpg">
                </article>
            </section>

        </main>
        <div id="disqus_thread"></div>
        <script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
    };
    */
    (function () { // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');
        s.src = 'https://bandirmaproje.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
        </script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>

        <hr>


       

        
       
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
        			<i class="fas fa-file-signature"></i><asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Medium" Font-Names="Exo" ForeColor="#E6E6E3" href="../iletisim.aspx">İletişim sayfası</asp:HyperLink>
        		</div>

        	</div>
        	<p>Copyright &copy; 2021 tüm hakları saklıdır |  Tankut Özbeyendir, Mert Orak</p>
        </footer>

        <a href="#anasayfa" id="gotopbtnclickevent" class="gotopbtn"> <i class="fas fa-arrow-up"></i> </a>

         <script id="dsq-count-scr" src="//bandirmaproje.disqus.com/count.js" async></script>
        <!-- javascript cdn-->
		<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js"></script>
        <script src="../scripts/main.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="scripts/main.js"></script>
    
        <script type="text/javascript" src="../scripts/haberpre.js"></script>
</body>
</html>
