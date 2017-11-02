package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dao.BoardDTO;


@WebServlet("/BoardView")
public class BoardViewServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.getBoardView(id);
		
		request.setAttribute("dto",dto);
		
		if(dto != null){
			request.getRequestDispatcher("BoardView.jsp").forward(request,response);
		}
		
	}

}
