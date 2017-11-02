package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDAO;
import dao.BoardDTO;


@WebServlet("/BoardDelete")
public class BoardDeleteServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		int id = dto.getId();
		
		System.out.println(id);
		
		
		BoardDAO dao = new BoardDAO();
		
		int state = dao.boardDelete(id);
		
		
		if(state !=0) response.sendRedirect("Paging?num=1");
		
	}

}
