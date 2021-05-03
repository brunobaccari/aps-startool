<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, 
    initial-scale=1.0">
    <link rel="sortcut icon" href="assets/img/logo-nav.png" type="image/startool-companie" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" href="assets/fonts/fonts/lineicons/font-css/LineIcons.css">
    <link rel="stylesheet" href="assets/css/LineIcons.2.0.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/bootstrap-5.0.0-alpha-2.min.css">
    <title>HOME | STARTOOL</title>
</head>
<body>
   <!--====== NAV PART START ======-->
<div class="header">
    <div class="menu-bar">
       <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container-fluid">
                    <a class="navbar-brand" href="#"><img src="assets/img/logo-nav.png"alt=""></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"><i class="fa fa-bars"></i> </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                            <a class="nav-link" href="#">Sobre N�s</a></li>
                            <a href="/startool/entrada?acao=PaginaCadastrar">
                            	<button type="button" class="btn btn-primary btn-sm">Cadastrar</button>
                            </a>
                            <a href="/startool/entrada?acao=PaginaLogin">
                            	<button type="button" class="btn btn-secondary btn-sm">Login</button>
                            </a>
                        </ul>
                    </div>            
            </div>
       </nav>
   </div>
</div>
    <!--====== MAIN SECTION START ======-->
	<section class="section-main">
		<div class="container">
			<div class="row margin-main">
				<div class="col-md-6">
					<div class="left">
                        <div class="logo-main-class">
                            <img src="assets/img/logo_name_main.png" alt="">
                        </div>						
                        <div class="frase-main-section">
                            <p>Inicie sua Startup com a Startool.</p>
                        </div>												
                        <div class="btn-main-section">
                        	<a href="/startool/entrada?acao=PaginaCadastrar">
                            	<button class="button-to-cad"><img src="assets/img/icon/cadastro.png"/>Cadastrar</button>
                            </a>
                             <a href="/startool/entrada?acao=PaginaLogin">
						    	<button class="button-to-log"><img src="assets/img/icon/login.png"/>Login</button>
						    	</a>
                        </div>						
					</div>	
				</div>

				

				<div class="col-md-6" bgcolor="rgb(102, 205, 170)">
					<div class="table-of-startups">
						<center>
							<br>
							<c:forEach items="${startups}" var="startups">
								<div class="tr-margin"><div class="table-row"><h5>${startups.nome} &nbsp;<img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pg0KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDE5LjAuMCwgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPg0KPHN2ZyB2ZXJzaW9uPSIxLjEiIGlkPSJDYXBhXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4Ig0KCSB2aWV3Qm94PSIwIDAgMjQwLjgxMSAyNDAuODExIiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAyNDAuODExIDI0MC44MTE7IiB4bWw6c3BhY2U9InByZXNlcnZlIj4NCjxnPg0KCTxwYXRoIGlkPSJFeHBhbmRfTW9yZSIgZD0iTTIyMC4wODgsNTcuNjY3bC05OS42NzEsOTkuNjk1TDIwLjc0Niw1Ny42NTVjLTQuNzUyLTQuNzUyLTEyLjQzOS00Ljc1Mi0xNy4xOTEsMA0KCQljLTQuNzQsNC43NTItNC43NCwxMi40NTEsMCwxNy4yMDNsMTA4LjI2MSwxMDguMjk3bDAsMGwwLDBjNC43NCw0Ljc1MiwxMi40MzksNC43NTIsMTcuMTc5LDBMMjM3LjI1Niw3NC44NTkNCgkJYzQuNzQtNC43NTIsNC43NC0xMi40NjMsMC0xNy4yMTVDMjMyLjUyOCw1Mi45MTUsMjI0LjgyOCw1Mi45MTUsMjIwLjA4OCw1Ny42Njd6Ii8+DQoJPGc+DQoJPC9nPg0KCTxnPg0KCTwvZz4NCgk8Zz4NCgk8L2c+DQoJPGc+DQoJPC9nPg0KCTxnPg0KCTwvZz4NCgk8Zz4NCgk8L2c+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8Zz4NCjwvZz4NCjxnPg0KPC9nPg0KPGc+DQo8L2c+DQo8L3N2Zz4NCg=="  width="10" /></h5></div></div>
							</c:forEach>
							
							<br>
						</center>
					</div>
				</div>
			</div>
		</div>
	</section>

    <!--====== CONTEUDO PART START ======-->
    <section id="conteudo" class="conteudo_area pt-70 pb-70">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="conteudo-content">
                        <div class="conteudo-about">
                            <h1 class="mb-35 counteudo_tittle">Come�ar a Sua Startup Com a Gente</h1>
                            <p class="mb-35 conteudo-frase">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore hdht dolore magna aliquyam erat, sed diam voluptua.</p>         
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 order-first order-lg-last d-flex justify-content-end">
                    <div class="conteudo-img">
                        <img src="assets/img/conteudo_img.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--====== CONTEUDO 2 PART START ======-->
    <section id="conteudo" class="conteudo_area pt-70 pb-70">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-lg-7 d-flex justify-content-start">
                    <div class="conteudo-img">
                        <img src="assets/img/conteudo2.png" alt="">
                    </div>
                </div>

                <div class="col-lg-5 order-last order-lg-last d-flex justify-content-lg-end">
                    <div class="conteudo-content-right">
                        <div class="conteudo-about">
                            <h1 class="mb-35 counteudo_tittle">Come�ar a Sua Startup Com a Gente</h1>
                            <p class="mb-35 conteudo-frase">Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore hdht dolore magna aliquyam erat, sed diam voluptua.</p>         
                        </div>
                    </div>
                </div>               
            </div>
        </div>
    </section>

    <!--====== FOOTER PART START ======-->
    <footer id="footer" class="footer_area">
      <div class="container">
            <div class="row footer_content">

                <div class="col-lg-3 col-md-6 col-sm-12">
                    <div class="d-flex justify-content-center justify-content-lg-start">
                        <div class="footer_img">
                            <a href="entrada?acao=ListarStartups"><img src="assets/img/footer-logo.png" alt=""></a>
                        </div>   
                    </div>
                </div>

                <div class="col-lg-5 col-md-6 pt-30 footer_link">
                    <ul class="link">
                        <li><a href="#">Fale Conosco</a></li>
                        <li><a href="#">3541-0090</a></li>
                        <li><a href="#">suporte@gmail.com</a></li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-6 col-sm-12 pt-30">
                    <div class="footer_logo d-flex justify-content-center justify-content-lg-end">
                            <a href="index.html"><img src="assets/img/footer-name.png" alt=""></a>
                    </div>
                    <div class="d-flex justify-content-center justify-content-lg-end">
                        <div class="footer_social text-center">
                            <ul class="social">
                                <li><a href="#"><i class="lni lni-facebook-filled"></i></a></li>
                                <li><a href="#"><i class="lni lni-twitter-filled"></i></a></li>
                                <li><a href="#"><i class="lni lni-instagram-original"></i></a></li>
                                <li><a href="#"><i class="lni lni-linkedin-original"></i></a></li>
                            </ul>
                        </div>
                    </div> 
                </div>

            </div>

          <div class="footer_copyright text-center pb-20"> <!-- footer copyright -->
              <p>Copyright � 2021- Startool </p>
          </div>

      </div> <!-- container -->
  </footer>
    
    
    
 
    <script src="assets/js/bootstrap.5.0.0.alpha-2-min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="assets/js/script.js"></script>
</body> 
</html>