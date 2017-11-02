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


@WebServlet("/BoardUpdate")
public class BoardUpdateServlet extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
/*		String id = request.getParameter("id");*/
	    String title = request.getParameter("boardTitle");
	    String content = request.getParameter("boardContent");
		BoardDAO dao = new BoardDAO();
		
		HttpSession session = request.getSession();
		BoardDTO dto = (BoardDTO)session.getAttribute("dto");
		
		
		int id = dto.getId();
		System.out.println(id);
		System.out.println(title);
		System.out.println(content);
		
		
		int state = dao.boardUpdate(id, title, content);
		if(state!=0) System.out.println("값 들어감 ㅇㅇ");
		
		response.sendRedirect("Paging?num=1");
		
	}

}
