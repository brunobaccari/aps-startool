package br.com.unip.startool.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.unip.startool.acao.Dashboard;
import br.com.unip.startool.acao.InformaStartup;
import br.com.unip.startool.acao.ListarStartups;
import br.com.unip.startool.acao.NovaStartup;
import br.com.unip.startool.acao.NovoUsuario;
import br.com.unip.startool.acao.PaginaCadastrar;
import br.com.unip.startool.acao.PaginaLogin;
import br.com.unip.startool.acao.Perfil;
import br.com.unip.startool.acao.ValidarLogin;

/**
 * Servlet implementation class ControllerEntrada
 */
@WebServlet("/entrada")
public class ControllerEntrada extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String entradaAcao = request.getParameter("acao");
		
		System.out.println(entradaAcao);
		String name = null;
		
		if(entradaAcao.equals("ListarStartups")) {
			ListarStartups acao = new ListarStartups();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("PaginaLogin")) {
			PaginaLogin acao = new PaginaLogin();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("ValidarLogin")) {
			ValidarLogin acao = new ValidarLogin();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("PaginaCadastrar")) {
			PaginaCadastrar acao = new PaginaCadastrar();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("NovoUsuario")) {
			NovoUsuario acao = new NovoUsuario();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("Dashboard")) {
			Dashboard acao = new Dashboard();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("NovaStartup")) {
			NovaStartup acao = new NovaStartup();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("Perfil")) {
			Perfil acao = new Perfil();
			name = acao.execute(request,response);
		}
		else if(entradaAcao.equals("InformaStartup")) {
			InformaStartup acao = new InformaStartup();
			name = acao.execute(request,response);
		}
		
		String [] tipoEndereco = name.split(":");
		if(tipoEndereco[0].equals("forward")) {
			RequestDispatcher rd = request.getRequestDispatcher(tipoEndereco[1]);
			rd.forward(request,response);
		}else {
			response.sendRedirect(tipoEndereco[1]);
		}
	}

}
