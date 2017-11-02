package dao;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class BoardDAO {


	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	String url = "";
	String user = "";
	String password = "";
	String driver = "";
	
	public BoardDAO() {
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
	
	private void getConnection() throws ClassNotFoundException, SQLException{
		Class.forName(driver);
		conn = DriverManager.getConnection(url, user, password);
	}
	


public int boardWrite(String title, String content, String writer) {
	
	int state = 0;
	
	try {
		getConnection();
	
		psmt = conn.prepareStatement("insert into bbs values(BOARD_NUM.NEXTVAL, ?, ?, ?, SYSDATE, 1)");
	
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setString(3, writer);
		
		state = psmt.executeUpdate();
		System.out.println(state);	

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
	
	public ArrayList<BoardDTO> getList(int pageNumber){
		
		ArrayList<BoardDTO> list = new ArrayList<BoardDTO>();
	


		int start = 1+(pageNumber-1)*10;  
		int end = pageNumber*10;
		
		try{
			getConnection();
			psmt = conn.prepareStatement("SELECT * FROM (SELECT rownum rnum, bbs.* FROM bbs) bbs where rnum >= ? and rnum <= ? order by id desc");
			psmt.setInt(1, start);
			psmt.setInt(2, end);
		
			 rs = psmt.executeQuery();
			 
			 while(rs.next()){
				 BoardDTO dto = new BoardDTO();
				 dto.setId(rs.getInt(2));
				 dto.setTitle(rs.getString(3));
				 dto.setContent(rs.getString(4));
				 dto.setWriter(rs.getString(5));
				 dto.setTime(rs.getString(6));
				 dto.setAvailable(rs.getInt(7));
				 list.add(dto);
				 
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
	
	
	public int totalCount(){
		
		 int totalCount= 0;
		
		try{
			getConnection();
			psmt = conn.prepareStatement("select count(*) as totalCount from bbs");
	
			 rs = psmt.executeQuery();
			if(rs.next()){
			 totalCount = rs.getInt(1);
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
		
		
		return totalCount;
		
	}
	
	
public BoardDTO getBoardView(int id){
	BoardDTO dto = new BoardDTO();
	
		try{
			getConnection();
			psmt = conn.prepareStatement("select *from bbs where id = ?");
			psmt.setInt(1, id);
		
			rs = psmt.executeQuery();
			 
			 if(rs.next()){
				 dto.setId(rs.getInt(1));
				 dto.setTitle(rs.getString(2));
				 dto.setContent(rs.getString(3));
				 dto.setWriter(rs.getString(4));
				 dto.setTime(rs.getString(5));
				 dto.setAvailable(rs.getInt(6));

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


public int  boardUpdate(int id, String title, String content) {
	int state = 0;
	
	try{
		getConnection();
		psmt = conn.prepareStatement("update bbs set title = ?, content = ? where id = ?");
		psmt.setString(1, title);
		psmt.setString(2, content);
		psmt.setInt(3, id);

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

public int boardDelete(int id) {
	int state =0;
	
	try{
		
	getConnection();
	psmt = conn.prepareStatement("delete from bbs where id = ?");
	psmt.setInt(1, id);


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
	
	
}
