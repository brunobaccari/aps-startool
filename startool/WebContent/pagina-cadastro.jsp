<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/entrada" var="LinkServletCadastro"/>
<!DOCTYPE html>
<html>
<head>
<link rel="sortcut icon" href="assets/img/logo-nav.png" type="image/startool-companie" />
<meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, 
    initial-scale=1.0">
    <link rel="stylesheet" href="assets/fonts/fonts/lineicons/font-css/LineIcons.css">
    <link rel="stylesheet" href="assets/css/LineIcons.2.0.css">
    <link rel="stylesheet" href="assets/css/cadastro.css">
    <link rel="stylesheet" href="assets/css/bootstrap-5.0.0-alpha-2.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>CADASTRO | STARTOOL</title>
</head>
<body>
<!--====== PAGINA DE CADASTRO ======-->
      <div class="container">
        <img src="assets/img/logo_name.png" width = "380px"
        height = "240px" class="img-fluid">
      </div>
      <form action="${LinkServletCadastro}" method="post">
                      <div class="container">
                        <div class="row g-3">
                          <div class="col">
                            <div class="inputContainer">
                             
                              <input class="Field" type="text" name="nome" placeholder="Nome" />
                              </div>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  
                                  <input class="Field" type="text" name="ra" placeholder="RA" />
                                  </div>
                              </div>
                              <div class="col">
                                <p><span style="color: rgb(252, 252, 252);">Voc� � um estudante?</span></p>
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="checkbox" name="estudante" id="inlineCheckbox1" value="SIM">
                                  <label class="form-check-label" for="inlineCheckbox1"><span style="color: rgb(252, 252, 252);">Sim</span></label>
                                </div>
                                <div class="form-check form-check-inline">
                                  <input class="form-check-input" type="checkbox"  name="estudante" id="inlineCheckbox2" value="NAO">
                                  <label class="form-check-label" for="inlineCheckbox2"><span style="color: rgb(252, 252, 252);">N�o</span></label>
                                </div>
                            <br>
                          </div>
                        </div>
                      </div>
                      <div class="container">
                        <div class="row g-3">
                          <div class="col">
                            <select class="form-select" name="estado" id="Estado">
                              <option selected>Estado</option>
                            </select>
                            <br>
                              </div>
                              <div class="col">
                                <select class="form-select" name="cidade" id="Cidade">
                                  <option selected>Cidade</option>
                                </select>
                              <br>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  
                                  <input class="Field" type="text" name="unidadeUni" placeholder="Unidade Unip" />
                                  </div>
                          </div>
                        </div>
                      </div>
                      <div class="container">
                        <div class="row g-3">
                          <div class="col">
                            <div class="inputContainer">
                              
                              <input class="Field" type="text" name="curso" placeholder="Curso" />
                              </div>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  <i class="fa fa-phone-square icon"> </i>
                                  <input class="Field" type="text" name="telefone" placeholder="Telefone" />
                                  </div>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  <input class="Field" type="text" name="celular" placeholder="Celular" />
                                  </div>
                          </div>
                        </div>
                      </div>
                      <div class="container">
                        <div class="row g-3">
                          <div class="col"> 
                            <div class="inputContainer">
                              <i class="fa fa-envelope icon"> </i>
                              <input class="Field" type="text" name="email" placeholder="Email" />
                              </div>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  <i class="fa fa-lock icon"> </i>
                                  <input class="Field" type="password" name="senha" placeholder="Senha" />
                                  </div>
                              </div>
                              <div class="col">
                                <div class="inputContainer">
                                  <i class="fa fa-lock icon"> </i>
                                  <input class="Field" type="password" placeholder="Confirmar senha" />
                                  </div>
                            <br>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                      <a href="/startool/entrada?acao=PaginaLogin" class="btn btn-login btn-lg active" role="button" aria-pressed="true">Login</a>
                          <input type="submit" class="btn btn-sign btn-lg active" title="Cadastrar"> 
                      </div>  
                      <input type="hidden" name="acao" value="NovoUsuario">
    </form>
  
    <script src="assets/js/bootstrap.5.0.0.alpha-2-min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <script src="assets/js/script.js"></script>
</body>
</html>