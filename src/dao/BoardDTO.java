package dao;

public class BoardDTO {
	 private int id;
	 private String title;
	 private String content;
	 private String writer;
	 private String time;
	 private int boardAvailable;
	 
	 
	public BoardDTO(int id, String title, String content, String writer, String time, int boardAvailable) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.writer = writer;
		this.time = time;
		this.boardAvailable = boardAvailable;
		
	}
	public BoardDTO() {
		// TODO Auto-generated constructor stub
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getAvailable() {
		return boardAvailable;
	}
	public void setAvailable(int boardAvailable) {
		this.boardAvailable = boardAvailable;
	}
	 public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
}
