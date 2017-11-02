package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

public class MainDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	String url = "";
	String user = "";
	String password = "";
	String driver = "";

	public MainDAO() {
		InputStream input = this.getClass().getResourceAsStream("../../../db.properties");

		Properties pro = new Properties();

		try {
			pro.load(input);
			url = pro.getProperty("url");
			user = pro.getProperty("id");
			password = pro.getProperty("pw");
			driver = pro.getProperty("driver");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	}

	public MemberDTO loginCheck(String email, String pw) {

		MemberDTO dto = null;

		try {
			getConnection();
			psmt = conn.prepareStatement("select * from member where email = ? and password = ?");

			psmt.setString(1, email);
			psmt.setString(2, pw);

			rs = psmt.executeQuery();

			while (rs.next()) {
				dto = new MemberDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5));
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return dto;
	}

	private void getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
	}

	public int memberJoin(String email, String pw, String name, String tel) {
		int state = 0;

		try {
			getConnection();
			psmt = conn.prepareStatement("insert into member values(member_num.nextval,?,?,?,?)");

			psmt.setString(1, name);
			psmt.setString(2, email);
			psmt.setString(3, pw);
			psmt.setString(4, tel);

			state = psmt.executeUpdate();

			psmt = conn.prepareStatement("insert into mygoal(email) values(?)");
			psmt.setString(1, email);
			state = psmt.executeUpdate();

			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return state;
	}

	public boolean emailCheck(String email) {

		boolean state = false;

		try {
			getConnection();
			psmt = conn.prepareStatement("select email from member where email = ?");

			psmt.setString(1, email);

			rs = psmt.executeQuery();

			if (rs.next()) {
				state = true;
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return state;

	}

	public int setValue(String email, String position, int goodCount, double kcal, double accuracy) {

		int state = 0;

		try {
			getConnection();
			
			Date now = new Date();
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
			String nowdate = format.format(now);
			System.out.println("jsh, 날짜"+nowdate);
			psmt = conn.prepareStatement("insert into counting values(?, ?, ?, ?, ?,?)");

			psmt.setString(1, email);
			psmt.setString(2, position);
			psmt.setInt(3, goodCount);
			psmt.setDouble(4, kcal);
			psmt.setDouble(5, accuracy);
			psmt.setString(6,nowdate);
			state = psmt.executeUpdate();

			// 자세확인
			String type11 = "";
			if (position.equals("b0")) {
				type11 = "b0counting";
			} else if (position.equals("b1")) {
				type11 = "b1counting";
			} else if (position.equals("b2")) {
				type11 = "b2counting";
			} else if (position.equals("b3")) {
				type11 = "b3counting";
			} else if (position.equals("b4")) {
				type11 = "b4counting";
			} else {
				System.out.println("자세없음.. error");
			}

			System.out.println(type11);
			

			// 같은 아이디가 있는지 확인하는 구문.
			psmt = conn.prepareStatement("select * from dailytotal where email = ? and ddate = ?");
			psmt.setString(1, email);
			psmt.setString(2, nowdate);
			rs = psmt.executeQuery();

			// 오늘 날짜의 아이디가 있다면
			if (rs.next() && !type11.equals("")) {
				
				
				psmt = conn.prepareStatement("update dailytotal set " + type11 + " = " + type11
						+ " + ?, totalcalories= totalcalories + ?, totalaccuracy= ((totalaccuracy * (cnt)) + ?) / (cnt+1), cnt =cnt+1 where email= ?");

				psmt.setInt(1, goodCount);
				psmt.setDouble(2, kcal);
				psmt.setDouble(3, accuracy);
				psmt.setString(4, email);
				state = psmt.executeUpdate();

	
				int caloriess=0; 
				 psmt = conn.prepareStatement("select totalcalories from dailytotal where email = ?"); 
				 psmt.setString(1, email);
				 rs = psmt.executeQuery();
			
				 if(rs.next()){
					 caloriess = rs.getInt(1);
				}
				System.out.println("칼로리"+caloriess);
				System.out.println("나의 목표"+getGoal(email));
				double goal=((double)caloriess/getGoal(email))*100;
				System.out.println("rate : "+goal);
				
				psmt = conn.prepareStatement("update dailytotal set arate = "+goal+" where email =?");
				psmt.setString(1, email);
				state = psmt.executeUpdate();
	
			
				
				// 아이디가 없다면
			} else {
				System.out.println(email);
				System.out.println(goodCount);
				System.out.println(kcal);
				System.out.println(accuracy);
				System.out.println(nowdate);
				
				//-----------------------------------------------------------------	
				
				double caloriess=kcal; 					
				System.out.println("칼로리2"+caloriess);					
				System.out.println("나의 목표2"+getGoal(email));		
				double goal=((double)caloriess/getGoal(email))*100;
				System.out.println("rate : "+goal);					
				
				//--------------------------------------------------------	---------
				
				psmt = conn.prepareStatement("insert into dailytotal(email," + type11 + " ,totalcalories, totalaccuracy, cnt, ddate, arate) values(?,?,?,?,1,?,?)");
				
				int num2 =(int)goal;		
				psmt.setString(1, email);
				psmt.setInt(2, goodCount);
				psmt.setDouble(3, kcal);
				psmt.setDouble(4, accuracy);
				psmt.setString(5, nowdate);
				psmt.setInt(6, num2);	
				state = psmt.executeUpdate();
	
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return state;
	}

	public ArrayList<CountingDTO> b0_accuracy(String email, String today) {
		
		ArrayList<CountingDTO> list = new ArrayList<CountingDTO>();
		CountingDTO dto = new CountingDTO();
		try {
			getConnection();
			
			psmt = conn.prepareStatement("select * from counting where email = ? and writedate = ?");

			psmt.setString(1, email);
			psmt.setString(2, today);
			rs = psmt.executeQuery();
			
			while(rs.next()){
				 String email2 = rs.getString(1);
				 String position2 = rs.getString(2);
				 int goodCount = rs.getInt(3);
				 double kcal = rs.getDouble(4);
				 
				 
				 
				 double accuracy = rs.getDouble(5);
				 String writeDate = rs.getString(6);
				 list.add(new CountingDTO(email2, position2, goodCount, kcal, accuracy, writeDate) );
			}
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}

	public ArrayList<DailyDTO> showWeekList(String email) {
		
		ArrayList<DailyDTO> list = new ArrayList<DailyDTO>();
		
		try {

			getConnection();
			// jsh1 , 고침.. arate 가져오는 부분
			psmt = conn.prepareStatement("select * from (select rownum rnum, email, ddate, b0counting, b1counting, b2counting, b3counting, b4counting, totalcalories, totalaccuracy, arate from dailytotal where email = ? ) where rnum >= 1 and rnum <= 7 ");
			psmt.setString(1, email);
			rs = psmt.executeQuery();

			while(rs.next()){
				 list.add(new DailyDTO(rs.getString(3), rs.getInt(4),rs.getInt(5),rs.getInt(6),rs.getInt(7),rs.getInt(8),rs.getDouble(9),rs.getDouble(10),rs.getInt(11)));
			}
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
		
	}

	public int setGoal(String email, int goal) {
		
		int state = 0;
		
		System.out.println(email);
		System.out.println(goal);
		try {
		
			getConnection();
			psmt = conn.prepareStatement("select *from mygoal where email = ?");
			psmt.setString(1, email);
			
			rs  = psmt.executeQuery();
			
			if (rs.next()) {
				psmt = conn.prepareStatement("update mygoal set goal = ? where email =? ");

				psmt.setInt(1, goal);
				psmt.setString(2, email);
				
			    psmt.executeUpdate();

				// 아이디가 없다면
			} else {
				
				psmt = conn.prepareStatement("insert into mygoal values(?,?)");

				psmt.setString(1, email);
				psmt.setInt(2, goal);
				
				 psmt.executeUpdate();
			}		
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return state;
	}

	public int getGoal(String email) {
	
		int goal= 0;
		
		try {	
		getConnection();			
			psmt = conn.prepareStatement("select * from mygoal where email = ?");
			psmt.setString(1, email);
		
			rs = psmt.executeQuery();

			if(rs.next()){
				goal = rs.getInt(2);
			}
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

		/*	try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}*/
		}
		return goal;
	}

	public ArrayList<RankDTO> getRank() {
			
		ArrayList<RankDTO> list = new ArrayList<RankDTO>();
		
		try {
			getConnection();
			psmt = conn.prepareStatement("select member.name, dailytotal.totalcalories, member.email from member, dailytotal where member.email =dailytotal.email order by totalcalories desc");
		
			rs = psmt.executeQuery();

			while(rs.next()){
		
				list.add(new RankDTO(rs.getString(1), rs.getDouble(2), rs.getString(3)));
			}
				
				
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {

			try {
				if (rs != null)
					rs.close();

				if (psmt != null)
					psmt.close();

				if (conn != null)
					conn.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
		
	}

	

	
	
	
	
	
}
