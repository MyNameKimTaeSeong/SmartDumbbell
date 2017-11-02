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
		
		
		String email = array[0]+ "@"+ array[1];  //사용자 이메일
	    String position = array[2]; // 자세 번호
	    int goodCount = Integer.parseInt(array[3]); // 자세 횟수
	    int set = Integer.parseInt(array[4]); //세트 수
	    
		double  kcal  = 0.2*goodCount;   //칼로리 계산 
		double  accuracy  =(goodCount/(double)(set*10))*100;  //1세트당 정확도 1세트당 10회
		
		
		System.out.println(email);
		System.out.println(position);
		System.out.println(goodCount);
		System.out.println(kcal);
		System.out.println(accuracy);

		MainDAO dao = new MainDAO();
		
		int state = dao.setValue(email,position,goodCount,kcal,accuracy);
			
		if(state!=0) System.out.println("값 입력 완료");
		
	}

}
