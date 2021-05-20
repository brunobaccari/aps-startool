<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, 
		initial-scale=1.0">
		<link rel="sortcut icon" href="assets/img/logo-nav.png" type="image/startool-companie" />
		<link href='https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css' rel='stylesheet'>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
		<link rel="stylesheet" href="assets/fonts/fonts/lineicons/font-css/LineIcons.css">
		<link rel="stylesheet" href="assets/css/LineIcons.2.0.css">
		<link rel="stylesheet" href="assets/css/dashboard-styles.css">
		<link rel="stylesheet" href="assets/css/style.css">
		<link rel="stylesheet" href="assets/css/bootstrap-5.0.0-alpha-2.min.css">
		<title>Insert title here</title>
		
		 <!--====== SCRIPT ======-->
		<script type="text/javascript">function mostra(ma){
			document.getElementById('ma').style.display='block';
		}
		</script>
		 <!--====== END SCRIPT ======-->
	</head>
	<body style="background-color: #56CCF2;">
	  <!--====== NAV PART START ======-->
		<jsp:include page="/pages/menu-dashboard.jsp" />
	
		<!--====== MAIN SECTION START ======-->
		<c:if test="${empty usuario.listaStartups}">
			<jsp:include page="/pages/tabela-sem-startup.jsp" />
		</c:if>
		<section class="section-dashboard">
		<center>
		<c:if test="${not empty usuario.listaStartups}">
			<div class="row" style="margin: 0 0; ">
					<div class="col-md-6" style="margin: 0 0; width: 95%; height: 421px; border-radius: 8px;">
						<div class="unique-startup-div">
						<div class="table-responsive col-lg-12">
							<div class="startup-name-div"> <p class="startup-name">Startup que est� participando </p> <p class="startup-name" style = "margin-top: -80px; text-align: right; "><i class="fas fa-minus"></i></p></div> 
							<div class="row" style="margin: 0 0; ">
							<div class="col-md-11" style="width: 95%; height: 353px; ">
							  <br>
							  <br>
							  <br>
			<table class="table table-striped table-hover" style="margin-top:-60px;">
				 <thead>
				   <tr>
				   	<th style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">Nome</th>
				   	<th style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">Projeto</th>
				   	<th style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">categoria</th>
				   	<th style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">Edi��es</th>
				   </tr>
				 </thead>
				 <tbody>
				  <c:forEach items="${usuario.listaStartups}" var="startpsUsu">
				    <tr>
					    <td style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">${startpsUsu.nome}</td>
					    <td style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">${startpsUsu.projeto}</td>
					    <td style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">${startpsUsu.categoria}</td>
						    <td style = "font-family: Archivo;font-style: normal;font-weight: bold; text-align: center; color: #000000;">
						    	 <button type="button" class="btn btn-success" onClick ="mostra()" style ="width: 90px; height: 29px; background-color: #30B800 !important;">Editar</button>
						    	<a href="#0"> <button type="button" class="btn btn-danger" style ="width: 90px; height: 29px; background-color:#DC1414 !important;">Excluir</button></a>
						    </td>
					    </tr> 
					    </c:forEach>
					  </tbody>
				</table>
		</c:if>
			</div>
			</div>
			</div>
			</div>
			</div>
			</div>
			 
				<br>
				<br>
				<br>
				<br>
				<div id = "ma" class ="hidden" style="display:none;">
				<h1 style="font-family: Archivo;font-style: normal;font-weight: bold;text-align: center;color: #FFFFFF;text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);">Detalhes da Startup:</h1>
				<br>
				<br>
				<div class="row" style="margin: 0 0; margin-top: 80px; ">
					<div class="col-md-6" style="margin: 0 0; width: 95%; height: 421px; border-radius: 8px;">
						<div class="unique-startup-div">	
							<div class="startup-name-div"><p class="startup-name" style = "margin-top: -80px; text-align: right; "><i class="fas fa-minus"></i></p></div> 
							<div class="row" style="margin: 0 0; ">
							<div class="col-md-11" style="width: 1228px;height: 100%; ">
							<p style = "font-family: Archivo;font-style: normal;font-weight: bold;font-size: 24px;line-height: 26px;text-align: left;color: #000000;">Dados Startup : </p>
							<br> 
							<div class="container">
								  <div class="row align-items-start">
								    <div class="col-md-7" style ="background: #F2F2F2; border-radius: 8px;width: 936px;">
								    <br>
								    <p style="font-family: Archivo;font-style: normal;font-weight: bold;font-size: 24px;text-align:left;color: #C4C4C4;">Nome da Startup</p></div>
								    <div class="col-md-4" style="margin-top: 13px; margin-right:12px;background: #F2F2F2;border-radius: 8px;">
								    <br>
								    <p style="font-family: Archivo;font-style: normal;font-weight: bold;font-size: 24px;line-height: 26px;text-align: left;color: #C4C4C4;">Categoria</p></div>
								    <div class="col-md-4" style ="margin-top:13px; background: #F2F2F2;border-radius: 8px;">
								    <br>
								    <p style="font-family: Archivo;font-style: normal;font-weight: bold;font-size: 24px;line-height: 26px;text-align: left;color: #C4C4C4;">Ferramentas</p></div>
								    <div class="col-md-1">
								    <br>
								    <a href="#"  type="button" class="btn btn-light" style ="background: #F2F2F2; border-radius: 8px;width: 74px; height: 65px; margin-top:-10px;"><h1 style="color: #C4C4C4;">+</h1></a></div>
								    <br>
								    <br>
								    <div "col-md-11">
								    <div style ="width: 100%; background: #DEE2E6;margin: 50px 25px 50px 0;padding-bottom: 30px;border-radius: 10px;">
									  <div style="width: 100%;background-color: #c4c4c4; color: white;padding: 15px;display: flex;justify-content: space-between;border-radius: 8px;">
									      <h2 style="font-family: Archivo;font-style: normal;font-weight: bold;font-size: 24px;line-height: 26px;text-align: center;color: #FFFFFF;">Ferramentas Adicionadas</h2>
									      <div style="width: 30px;height: 5px;background-color: #fff;align-self: center;"></div>
									  </div>
									  <div>
									  <br>
									      <input type="text" style="width: 98%;height: 50px;background: #FFFFFF;border: 1px solid #000000;box-sizing: border-box;border-radius: 6px;">
									      <input type="text" style="width: 98%;height: 50px;background: #FFFFFF;border: 1px solid #000000;box-sizing: border-box;border-radius: 6px;">
									      <input type="text" style="width: 98%;height: 50px;lbackground: #FFFFFF;border: 1px solid #000000;box-sizing: border-box;border-radius: 6px;">
									  </div>
									</div>
									</div>
								  </div>
								</div>
					</div>
					</div>		
				  			</div>
				  			</div>	
			
				  			<h2 style=" margin-top:450px; font-family:Archivo;font-style: normal;font-weight: bold; text-align: center;color: #000000;">Descri��o da Startup:</h2>
				  			<center>
				  			<div class="col-md-8" style="width: 95%px; height: 445px; background: #FFFFFF;border-radius: 12px;">
  								<input type="text" style="width: 100%; height: 445px; background: #FFFFFF;border-radius: 12px; font-family: Archivo;font-style: normal;font-weight: bold;font-size: 48px;line-height: 52px;color: #000000;" >
  								</center>
  							</div>
  							<button type="submit" class="btn btn-sign btn-lg active" title="Cadastrar" style="width:187.69; height: 49px;background: #61CA86; border-radius: 8px;"><p style="font-family: Archivo; font-style: normal; font-weight: bold; font-size: 24px; line-height: 26px; text-align: center; color: #FFFFFF;">Cadastrar</p></button>
				
				</div>
							</center>
		</section>
		<script src="assets/js/dashboard-main.js"></script>
		
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js" integrity="sha384-lpyLfhYuitXl2zRZ5Bn2fqnhNAKOAaM/0Kr9laMspuaMiZfGmfwRNFh8HlMy49eQ" crossorigin="anonymous"></script>
	</body>
</html>