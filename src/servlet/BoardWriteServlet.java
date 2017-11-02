package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDAO;
import dao.MemberDTO;


@WebServlet("/BoardWrite")
public class BoardWriteServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		String title = request.getParameter("boardTitle");
		String content = request.getParameter("boardContent");
		
		HttpSession session = request.getSession();
		MemberDTO dto  = (MemberDTO) session.getAttribute("member");
		
		String writer = dto.getName();

		BoardDAO dao = new BoardDAO();
		
			
		int state = dao.boardWrite(title, content, writer);
		
		if(state != 0){
			System.out.println("게시글 작성 성공");
			
			response.sendRedirect("Paging?num=1");
		}
		
	}

}
