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
		 
		    int num = Integer.parseInt(request.getParameter("num")); //������ �Ѱܹ���
		    BoardDAO dao = new BoardDAO();
		    PagingVO paging = new PagingVO(); 
	     
		    paging.setPageNo(num);  //����¡ vo�� ����� �ʱ�ȭ
		    paging.setPageSize(10);  //����¡�� ����� ����
		    paging.setTotalCount(dao.totalCount());  //�������� �������.. paging.making()
		  
		    ArrayList<BoardDTO> list = dao.getList(num);
	        
	        request.setAttribute("list", list); //����������
	        request.setAttribute("paging", paging); //����������
	       
	        request.getRequestDispatcher("BoardMain.jsp").forward(request, response);
	}

}
