package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MainDAO;
import dao.MemberDTO;


@WebServlet("/AppLoginCheck")
public class AppLoginCheckServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		System.out.println(email);
		System.out.println(pw);
		
		MainDAO dao = new MainDAO();
		MemberDTO dto = dao.loginCheck(email, pw);
		
		
		if(dto != null){
			HttpSession session = request.getSession();
			session.setAttribute("member", dto);
			response.getWriter().print("{\"check\":\"true\"}");
			
		}else{
			response.getWriter().print("{\"check\":\"false\"}");
		}
	}

}
