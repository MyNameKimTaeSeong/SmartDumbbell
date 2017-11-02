package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MainDAO;
import sun.applet.Main;


@WebServlet("/EmailCheck")
public class EmailCheckServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		
		MainDAO dao = new MainDAO();
		boolean check = dao.emailCheck(email);
		
		if(check == true) {
			response.getWriter().print("true");		
	}else{
		response.getWriter().print("false");		
	}

	}
}