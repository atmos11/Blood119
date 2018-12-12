package blood119.notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import blood119.jdbc.JDBCUtil;
import blood119.notice.vo.NoticeVO;

public class NoticeDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public void insertNotice(NoticeVO vo) {
		String sql = "insert into notice(title, writer, contents) values(?,?,?)";
		System.out.println("==> JDBC로 insertNotice() :"+sql);
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContents());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	public void updateNotice(NoticeVO vo)
	{
		String sql = "update notice set title=?, contents=?, where notice_index=?";
		System.out.println("==>JDBC로 updateNotice() :"+sql);
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContents());
			pstmt.setInt(3, vo.getNotice_index());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	public void deleteNotice(NoticeVO vo)
	{
		String sql = "delete from Notice where notice_index=?";
		System.out.println("==>JDBC로 deleteNotice() :"+sql);
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNotice_index());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	public NoticeVO getNotice(NoticeVO vo)
	{
		String sql = "select * from notice where notice_index=?";
		System.out.println("==>JDBC로 getNotice() :"+sql);
		NoticeVO board = null;
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNotice_index());
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				board = new NoticeVO();
				board.setNotice_index(rs.getInt("NOTICE_INDEX"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContents(rs.getString("CONTENTS"));
				board.setNotice_date(rs.getDate("NOTICE_DATE"));
				board.setNotice_hits(rs.getInt("NOTICE_HITS"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return board;
	}
	public List<NoticeVO> getNoticeList(NoticeVO vo)
	{
		String sql = "select * from notice order by notice_index desc";
		System.out.println("==>JDBC로 getNoticeList(): "+sql);		
		List<NoticeVO> boardList = new ArrayList<NoticeVO>();
		
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				NoticeVO board = new NoticeVO();
				board.setNotice_index(rs.getInt("NOTICE_INDEX"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setNotice_date(rs.getDate("NOTICE_DATE"));
				board.setNotice_hits(rs.getInt("NOTICE_HITS"));
				boardList.add(board);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return boardList;
	}
}
