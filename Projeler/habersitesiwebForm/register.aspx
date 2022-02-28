<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="habersitesi.WebForm2" %>

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
	<title></title>
	<link rel="stylesheet" type="text/css" href="scripts/logreg.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@700&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Amatic+SC:wght@700&display=swap" rel="stylesheet">
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
    <title>Haber Portal Sitesi | BANDIRMA MYÖ</title>
</head>
<body>

	<img class="wave" src="img/wave.jpg">
	<div class="container">
		<div class="logo">
			<h1>HABER<br><span>PORTAL</span></h1>
		</div>
		<div class="login-content">
			<form action="#" runat="server" method="post">
				<img src="img/avatar.svg">
				<h2 class="title">Kayıt</h2>
              <div class="input-div one">
                 <div class="i">
                    <i class="far fa-envelope"></i>
                 </div>
                 <div class="div">
                    <h5>Email</h5>
                    <asp:TextBox ID="TextBox1" CssClass="input" required="email" runat="server" ForeColor="#E7E3E2" Font-Size="Medium" TextMode="Email"></asp:TextBox>
                 </div>
              </div>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Kullanıcı adı</h5>
           		   		<asp:TextBox ID="TextBox2" CssClass="input" required="" runat="server" ForeColor="#E7E3E2" Font-Size="Medium"></asp:TextBox>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Şifre</h5>
           		    	<asp:TextBox ID="TextBox3" CssClass="input" required="" runat="server" ForeColor="#E7E3E2" Font-Size="Medium" TextMode="Password"></asp:TextBox>
            	   </div>
            	</div>	
                <input type="checkbox" required="" name="agreed" class="agreedcheckbox" value="Kullanım şartlarını kabul ediyorum" />
                <label for="agreed" class="labelagreed">Kullanım şartlarını kabul ediyorum.</label>
            	<asp:Button ID="Button1" runat="server" Text="KAYIT OL" CssClass="btn" OnClick="Button1_Click"/>
                
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#E7E3E2" Font-Size="Smaller" Visible="False"></asp:Label>
                <asp:HyperLink ID="HyperLink1" href="login.aspx" runat="server" Visible="False">Giriş sayfasına git</asp:HyperLink>
				
				    



                        <asp:HyperLink ID="myBtn" CssClass="myBtnn" runat="server">Kullanım Şartları</asp:HyperLink>
                        <div id="myModal" class="modal">

                          
                          <div class="modal-content">
                            <span class="close">&times;</span>
                            <h1 class="title">SITE KULLANIM ŞARTLARI</h1>
                            <p class="text">
                                SİTE KULLANIM ŞARTLARI
                                Lütfen sitemizi kullanmadan evvel bu ‘site kullanım şartları’nı dikkatlice okuyunuz. 
                                Bu alışveriş sitesini kullanan ve alışveriş yapan müşterilerimiz aşağıdaki şartları kabul etmiş varsayılmaktadır:
                                Sitemizdeki web sayfaları ve ona bağlı tüm sayfalar (‘site’) ……………………… adresindeki ……………………………….firmasının (Firma) malıdır ve onun tarafından işletilir. Sizler (‘Kullanıcı’) sitede sunulan tüm hizmetleri kullanırken aşağıdaki şartlara tabi olduğunuzu, sitedeki hizmetten yararlanmakla ve kullanmaya devam etmekle; Bağlı olduğunuz yasalara göre sözleşme imzalama hakkına, yetkisine ve hukuki ehliyetine sahip ve 18 yaşın üzerinde olduğunuzu, bu sözleşmeyi okuduğunuzu, anladığınızı ve sözleşmede yazan şartlarla bağlı olduğunuzu kabul etmiş sayılırsınız.
                            </p>
                            <p class="text">
                                
                            İşbu sözleşme taraflara sözleşme konusu site ile ilgili hak ve yükümlülükler yükler ve taraflar işbu sözleşmeyi kabul ettiklerinde bahsi geçen hak ve yükümlülükleri eksiksiz, doğru, zamanında, işbu sözleşmede talep edilen şartlar dâhilinde yerine getireceklerini beyan ederler.

                            1. SORUMLULUKLAR
                            a.Firma, fiyatlar ve sunulan ürün ve hizmetler üzerinde değişiklik yapma hakkını her zaman saklı tutar. 
                            b.Firma, üyenin sözleşme konusu hizmetlerden, teknik arızalar dışında yararlandırılacağını kabul ve taahhüt eder.
                            c.Kullanıcı, sitenin kullanımında tersine mühendislik yapmayacağını ya da bunların kaynak kodunu bulmak veya elde etmek amacına yönelik herhangi bir başka işlemde bulunmayacağını aksi halde ve 3. Kişiler nezdinde doğacak zararlardan sorumlu olacağını, hakkında hukuki ve cezai işlem yapılacağını peşinen kabul eder. 
                            d.Kullanıcı, site içindeki faaliyetlerinde, sitenin herhangi bir bölümünde veya iletişimlerinde genel ahlaka ve adaba aykırı, kanuna aykırı, 3. Kişilerin haklarını zedeleyen, yanıltıcı, saldırgan, müstehcen, pornografik, kişilik haklarını zedeleyen, telif haklarına aykırı, yasa dışı faaliyetleri teşvik eden içerikler üretmeyeceğini, paylaşmayacağını kabul eder. Aksi halde oluşacak zarardan tamamen kendisi sorumludur ve bu durumda ‘Site’ yetkilileri, bu tür hesapları askıya alabilir, sona erdirebilir, yasal süreç başlatma hakkını saklı tutar. Bu sebeple yargı mercilerinden etkinlik veya kullanıcı hesapları ile ilgili bilgi talepleri gelirse paylaşma hakkını saklı tutar.
                            e.Sitenin üyelerinin birbirleri veya üçüncü şahıslarla olan ilişkileri kendi sorumluluğundadır. 
                            </p>
                              <p class="text">
                                  
                                2.  Fikri Mülkiyet Hakları

                                2.1. İşbu Site’de yer alan ünvan, işletme adı, marka, patent, logo, tasarım, bilgi ve yöntem gibi tescilli veya tescilsiz tüm fikri mülkiyet hakları site işleteni ve sahibi firmaya veya belirtilen ilgilisine ait olup, ulusal ve uluslararası hukukun koruması altındadır. İşbu Site’nin ziyaret edilmesi veya bu Site’deki hizmetlerden yararlanılması söz konusu fikri mülkiyet hakları konusunda hiçbir hak vermez.
                                2.2. Site’de yer alan bilgiler hiçbir şekilde çoğaltılamaz, yayınlanamaz, kopyalanamaz, sunulamaz ve/veya aktarılamaz. Site’nin bütünü veya bir kısmı diğer bir internet sitesinde izinsiz olarak kullanılamaz. 
                              </p>
                              <p class="text">
                                  
                                3. Gizli Bilgi
                                3.1. Firma, site üzerinden kullanıcıların ilettiği kişisel bilgileri 3. Kişilere açıklamayacaktır. Bu kişisel bilgiler; kişi adı-soyadı, adresi, telefon numarası, cep telefonu, e-posta adresi gibi Kullanıcı’yı tanımlamaya yönelik her türlü diğer bilgiyi içermekte olup, kısaca ‘Gizli Bilgiler’ olarak anılacaktır.

                                3.2. Kullanıcı, sadece tanıtım, reklam, kampanya, promosyon, duyuru vb. pazarlama faaliyetleri kapsamında kullanılması ile sınırlı olmak üzere, Site’nin sahibi olan firmanın kendisine ait iletişim, portföy durumu ve demografik bilgilerini iştirakleri ya da bağlı bulunduğu grup şirketleri ile paylaşmasına muvafakat ettiğini kabul ve beyan eder. Bu kişisel bilgiler firma bünyesinde müşteri profili belirlemek, müşteri profiline uygun promosyon ve kampanyalar sunmak ve istatistiksel çalışmalar yapmak amacıyla kullanılabilecektir.

                                3.3. Gizli Bilgiler, ancak resmi makamlarca usulü dairesinde bu bilgilerin talep edilmesi halinde ve yürürlükteki emredici mevzuat hükümleri gereğince resmi makamlara açıklama yapılmasının zorunlu olduğu durumlarda resmi makamlara açıklanabilecektir.
                              </p>
                              <p class="text">
                                  
                                4. Garanti Vermeme: İŞBU SÖZLEŞME MADDESİ UYGULANABİLİR KANUNUN İZİN VERDİĞİ AZAMİ ÖLÇÜDE GEÇERLİ OLACAKTIR. FİRMA TARAFINDAN SUNULAN HİZMETLER "OLDUĞU GİBİ” VE "MÜMKÜN OLDUĞU” TEMELDE SUNULMAKTA VE PAZARLANABİLİRLİK, BELİRLİ BİR AMACA UYGUNLUK VEYA İHLAL ETMEME KONUSUNDA TÜM ZIMNİ GARANTİLER DE DÂHİL OLMAK ÜZERE HİZMETLER VEYA UYGULAMA İLE İLGİLİ OLARAK (BUNLARDA YER ALAN TÜM BİLGİLER DÂHİL) SARİH VEYA ZIMNİ, KANUNİ VEYA BAŞKA BİR NİTELİKTE HİÇBİR GARANTİDE BULUNMAMAKTADIR. 

                                5. Kayıt ve Güvenlik 
                                Kullanıcı, doğru, eksiksiz ve güncel kayıt bilgilerini vermek zorundadır. Aksi halde bu Sözleşme ihlal edilmiş sayılacak ve Kullanıcı bilgilendirilmeksizin hesap kapatılabilecektir.
                                Kullanıcı, site ve üçüncü taraf sitelerdeki şifre ve hesap güvenliğinden kendisi sorumludur. Aksi halde oluşacak veri kayıplarından ve güvenlik ihlallerinden veya donanım ve cihazların zarar görmesinden Firma sorumlu tutulamaz.
                              </p>
                              <p class="text">
                                    
                                    6. Mücbir Sebep

                                    Tarafların kontrolünde olmayan; tabii afetler, yangın, patlamalar, iç savaşlar, savaşlar, ayaklanmalar, halk hareketleri, seferberlik ilanı, grev, lokavt ve salgın hastalıklar, altyapı ve internet arızaları, elektrik kesintisi gibi sebeplerden (aşağıda birlikte "Mücbir Sebep” olarak anılacaktır.) dolayı sözleşmeden doğan yükümlülükler taraflarca ifa edilemez hale gelirse, taraflar bundan sorumlu değildir. Bu sürede Taraflar’ın işbu Sözleşme’den doğan hak ve yükümlülükleri askıya alınır. 
                              </p>
                              <p class="text">
                                  
                                7. Sözleşmenin Bütünlüğü ve Uygulanabilirlik

                                İşbu sözleşme şartlarından biri, kısmen veya tamamen geçersiz hale gelirse, sözleşmenin geri kalanı geçerliliğini korumaya devam eder.

                                8. Sözleşmede Yapılacak Değişiklikler

                                Firma, dilediği zaman sitede sunulan hizmetleri ve işbu sözleşme şartlarını kısmen veya tamamen değiştirebilir. Değişiklikler sitede yayınlandığı tarihten itibaren geçerli olacaktır. Değişiklikleri takip etmek Kullanıcı’nın sorumluluğundadır. Kullanıcı, sunulan hizmetlerden yararlanmaya devam etmekle bu değişiklikleri de kabul etmiş sayılır.
                              </p>
                              <p class="text">
                                  9. Tebligat
                                İşbu Sözleşme ile ilgili taraflara gönderilecek olan tüm bildirimler, Firma’nın bilinen e.posta adresi ve kullanıcının üyelik formunda belirttiği e.posta adresi vasıtasıyla yapılacaktır. Kullanıcı, üye olurken belirttiği adresin geçerli tebligat adresi olduğunu, değişmesi durumunda 5 gün içinde yazılı olarak diğer tarafa bildireceğini, aksi halde bu adrese yapılacak tebligatların geçerli sayılacağını kabul eder.
                              </p>
                              <p class="text">
                                10. Delil Sözleşmesi
                                Taraflar arasında işbu sözleşme ile ilgili işlemler için çıkabilecek her türlü uyuşmazlıklarda Taraflar’ın defter, kayıt ve belgeleri ile ve bilgisayar kayıtları ve faks kayıtları 6100 sayılı Hukuk Muhakemeleri Kanunu uyarınca delil olarak kabul edilecek olup, kullanıcı bu kayıtlara itiraz etmeyeceğini kabul eder.
                              </p>
                              <p class="text">
                                11. Uyuşmazlıkların Çözümü
                                İşbu Sözleşme’nin uygulanmasından veya yorumlanmasından doğacak her türlü uyuşmazlığın çözümünde İstanbul (Merkez) Adliyesi Mahkemeleri ve İcra Daireleri yetkilidir.
                              </p>

                          </div>

                        </div>

            </form>
        
 

        </div>


    </div>

          <div class="loader-wrapper">
          <span class="loader"><span class="loader-inner"></span></span>
        </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="scripts/logreg.js"></script>
    <script type="text/javascript" src="scripts/preloadhaber.js"></script>
</body>
</html>
