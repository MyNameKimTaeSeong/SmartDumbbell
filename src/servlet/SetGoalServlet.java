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


@WebServlet("/SetGoal")
public class SetGoalServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO)session.getAttribute("member");
		
		String email = dto.getEmail();
		int goal = Integer.parseInt(request.getParameter("goal"));
		
		System.out.println(email);
		System.out.println(goal);
		
		
		MainDAO dao = new MainDAO();
		int state = dao.setGoal(email, goal);
		
		
		response.sendRedirect("MyPage.jsp");
	}

}
