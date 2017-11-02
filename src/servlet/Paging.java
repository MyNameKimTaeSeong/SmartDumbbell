package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDAO;
import dao.BoardDTO;
import dao.PagingVO;


@WebServlet("/Paging")
public class Paging extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		    int num = Integer.parseInt(request.getParameter("num")); //페이지 넘겨받음
		    BoardDAO dao = new BoardDAO();
		    PagingVO paging = new PagingVO(); 
	     
		    paging.setPageNo(num);  //페이징 vo를 만들고 초기화
		    paging.setPageSize(10);  //페이징당 출력할 갯수
		    paging.setTotalCount(dao.totalCount());  //페이지가 만들어짐.. paging.making()
		  
		    ArrayList<BoardDTO> list = dao.getList(num);
	        
	        request.setAttribute("list", list); //현재페이지
	        request.setAttribute("paging", paging); //현재페이지
	       
	        request.getRequestDispatcher("BoardMain.jsp").forward(request, response);
	}

}
