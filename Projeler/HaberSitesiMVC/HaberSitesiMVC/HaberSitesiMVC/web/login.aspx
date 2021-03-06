<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="habersitesi.WebForm1" %>

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
			<form action="#"  runat="server" method="post">
				<img src="img/avatar.svg">
				<h2 class="title">Hoşgeldiniz</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<h5>Kullanıcı adı</h5>
           		   		<!-- <input type="text" class="input"> -->
                        <asp:TextBox ID="TextBox2" CssClass="input" runat="server" ForeColor="#E7E3E2" Font-Size="Medium" required=""></asp:TextBox>
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Şifre</h5>
           		    	<!-- <input type="password" class="input"> -->
                        <asp:TextBox ID="TextBox3" CssClass="input" runat="server" ForeColor="#E7E3E2" Font-Size="Medium" TextMode="Password" required=""></asp:TextBox>

            	   </div>
            	</div>	
            	
            	<a href="register.aspx">Hesap oluştur</a>
            	<!-- <input type="submit" class="btn" value="GİRİŞ"> -->
                <asp:Button ID="Button1" runat="server" Text="Giriş yap" CssClass="btn" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="#E7E3E2" Font-Size="Smaller" Visible="False"></asp:Label>
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
