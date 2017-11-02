package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MainDAO;


@WebServlet("/MemberJoin")
public class MemberJoinServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
	    
		System.out.println(email);
		System.out.println(pw);
		System.out.println(name);
		System.out.println(tel);
		
		
		MainDAO dao = new MainDAO();
		int state = dao.memberJoin(email,pw,name,tel);
		
		if(state!=0){
			
			response.sendRedirect("MainPage.jsp");
		}
		
	}

}
