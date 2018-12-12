package blood119.notice.vo;

import java.sql.Date;

public class NoticeVO {
	private int notice_index;
	private String title;
	private String writer;
	private String contents;
	private Date notice_date;
	private int notice_hits;
	
	public int getNotice_index() {
		return notice_index;
	}
	public void setNotice_index(int notice_index) {
		this.notice_index = notice_index;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Date notice_date) {
		this.notice_date = notice_date;
	}
	public int getNotice_hits() {
		return notice_hits;
	}
	public void setNotice_hits(int notice_hits) {
		this.notice_hits = notice_hits;
	}
}
