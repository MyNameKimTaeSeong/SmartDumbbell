package servlet;

import java.io.IOException;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.MainDAO;


@WebServlet("/InputCounting")
public class InputCountingServlet extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String data = request.getParameter("data");
		String array[]=data.split("@");
		
		System.out.println(data);
		
		
		String email = array[0]+ "@"+ array[1];  //����� �̸���
	    String position = array[2]; // �ڼ� ��ȣ
	    int goodCount = Integer.parseInt(array[3]); // �ڼ� Ƚ��
	    int set = Integer.parseInt(array[4]); //��Ʈ ��
	    
		double  kcal  = 0.2*goodCount;   //Į�θ� ��� 
		double  accuracy  =(goodCount/(double)(set*10))*100;  //1��Ʈ�� ��Ȯ�� 1��Ʈ�� 10ȸ
		
		
		System.out.println(email);
		System.out.println(position);
		System.out.println(goodCount);
		System.out.println(kcal);
		System.out.println(accuracy);

		MainDAO dao = new MainDAO();
		
		int state = dao.setValue(email,position,goodCount,kcal,accuracy);
			
		if(state!=0) System.out.println("�� �Է� �Ϸ�");
		
	}

}
