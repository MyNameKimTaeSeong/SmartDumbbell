package servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.CountingDTO;
import dao.DailyDTO;
import dao.MainDAO;
import dao.MemberDTO;
import dao.RankDTO;

@WebServlet("/ShowMyPage")
public class ShowMyPageServlet extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("member");

		String email = dto.getEmail();
		MainDAO dao = new MainDAO();

		Date now = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String nowdate = format.format(now);
		
		System.out.println("���糯¥"+nowdate);
		// ���
		// �Ϸ�ġ ��� = � ���� ��

		// dao.ranking(); ��ŷ
		// dao.totalranking(); ��ü ��ŷ 1,2,3��

		// ----------------------------------------- table ������.. �˾Ƽ� �̾�.
		// ���� ��ǥ
		// dao.goal();
		// dao.goal(mygoal);
		// -----------------------------------------

		String[] position = new String[5];
		int[] goodCount = new int[5];
		double[] accuracy = new double[5];
		int[] cnt = new int[5];
		double[] kcal = new double[5];
		double kcalsum=0;
		for (int i = 0; i < cnt.length; i++) {
			accuracy[i] = 0;
		}
		
		
		ArrayList<CountingDTO> list = dao.b0_accuracy(email, nowdate);

		for (int i = 0; i < list.size(); i++) {

			for (int j = 0; j < 5; j++) {
				if (list.get(i).getPosition().equals("b" + j)) {
					goodCount[j] = goodCount[j] + list.get(i).getGoodCount();
					accuracy[j] = accuracy[j] + list.get(i).getAccuracy();
					kcal[j] = kcal[j] + list.get(i).getKcal();
					cnt[j]++;
				}
				
			}
		}
		// ��Į�θ�

		for (int j = 0; j < 5; j++) {
			accuracy[j] = accuracy[j] / cnt[j];
		}
		
		for (int j = 0; j < 5; j++) {
			kcalsum =  kcalsum + kcal[j];
		}
		
		ArrayList<RankDTO> list3 = dao.getRank(); //��ũ ����Ʈ
		
		
		ArrayList<DailyDTO> list2 = dao.showWeekList(email); //�ְ� ��� ����Ʈ
		
		
		
		int goal = dao.getGoal(email);
		double Arate = (kcalsum/goal )*100;
		
		
		
		System.out.println(goal);
		System.out.println(kcalsum);
		System.out.println(Arate);
		
		session.setAttribute("Arate", Arate);
		session.setAttribute("kcalsum", kcalsum);
		session.setAttribute("goal", goal);
		session.setAttribute("kcal", kcal);
		session.setAttribute("goodCount", goodCount);
		session.setAttribute("accuracy", accuracy);
		session.setAttribute("list3", list3);
		session.setAttribute("list2", list2);
		 
		
	
		
		response.sendRedirect("MyPage.jsp");
	
	}

}
