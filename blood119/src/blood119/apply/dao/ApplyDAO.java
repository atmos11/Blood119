package blood119.apply.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import blood119.apply.vo.ApplyVO;
import blood119.jdbc.JDBCUtil;

public class ApplyDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	public Connection getConnection() throws SQLException {
		Context initContext=null;
		Connection conn=null;
		DataSource ds=null;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
	 public int getnowsel() throws SQLException {
		 int seq = 0 ;
			conn = getConnection();
			String sql ="select max(APPLY_INDEX) from apply";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			 if(rs.next()) {				 
				 seq=(rs.getInt(1));
			 }
			 return seq;
	 }
	 
	public void insertApply(ApplyVO vo) throws SQLException {

		String sql = "insert into apply(APPLY_INDEX,apply_sort, apply_id, location, "
				+ "ani_name, ani_type, ani_bloodtype, ani_gender, ani_age, RESULT) values(?,?,?,?,?,?,?,?,?,?)";
		System.out.println("==> JDBC로 insertApply() :"+sql);	

				conn = getConnection();
				pstmt = conn.prepareStatement(sql);
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, vo.getApply_index()+1);
				pstmt.setString(2, vo.getApply_sort());
				pstmt.setString(3, vo.getApply_id());
				pstmt.setString(4, vo.getLocation());
				pstmt.setString(5, vo.getAni_name());
				pstmt.setString(6, vo.getAni_type());
				pstmt.setString(7, vo.getAni_bloodtype());
				pstmt.setString(8, vo.getAni_gender());
				pstmt.setInt(9, vo.getAni_age());
				pstmt.setString(10,vo.getResult());
				pstmt.executeUpdate();
				pstmt.close();
				conn.close();	}
	
	public void updateApply(ApplyVO vo)
	{
		String sql = "update Apply set apply_sort=?, location=?, ani_name=?, "
				+ "ani_type=?, ani_bloodtype=?, ani_gender=?, ani_age=?";
		System.out.println("==>JDBC로 updateApply() :"+sql);
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getApply_sort());
			pstmt.setString(2, vo.getLocation());
			pstmt.setString(3, vo.getAni_name());
			pstmt.setString(4, vo.getAni_type());
			pstmt.setString(5, vo.getAni_bloodtype());
			pstmt.setString(6, vo.getAni_gender());
			pstmt.setInt(7, vo.getAni_age());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	public void deleteApply(ApplyVO vo)
	{
		String sql = "delete from apply where apply_index=?";
		System.out.println("==>JDBC로 deleteApply() :"+sql);
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getApply_index());
			rs = pstmt.executeQuery();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	public ApplyVO getApply(ApplyVO vo)
	{
		String sql = "select * from apply where apply_index=?";
		System.out.println("==>JDBC로 getBoard() :"+sql);
		ApplyVO board = null;
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getApply_index());
			rs = pstmt.executeQuery();
			
			if(rs.next())
			{
				board = new ApplyVO();
				board.setApply_index(rs.getInt("APPLY_INDEX"));
				board.setApply_sort(rs.getString("APPLY_SORT"));
				board.setApply_id(rs.getString("APPLY_ID"));
				board.setApply_date(rs.getDate("APPLY_DATE"));
				board.setLocation(rs.getString("LOCATION"));
				board.setAni_name(rs.getString("ANI_NAME"));
				board.setAni_type(rs.getString("ANI_TYPE"));
				board.setAni_bloodtype(rs.getString("ANI_BLOODTYPE"));
				board.setAni_gender(rs.getString("ANI_GENDER"));
				board.setAni_age(rs.getInt("ANI_AGE"));
				board.setResult(rs.getString("RESULT"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return board;
	}
	public List<ApplyVO> getApplyList(ApplyVO vo)
	{
		String sql = "select * from apply order by apply_date desc";
		System.out.println("==>JDBC로 getBoardList(): "+sql);		
		List<ApplyVO> boardList = new ArrayList<ApplyVO>();
		
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			DataSource ds = (DataSource)envContext.lookup("jdbc/board");
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				ApplyVO board = new ApplyVO();
				board.setApply_index(rs.getInt("APPLY_INDEX"));
				board.setApply_sort(rs.getString("APPLY_SORT"));
				board.setApply_id(rs.getString("APPLY_ID"));
				board.setApply_date(rs.getDate("APPLY_DATE"));
				board.setLocation(rs.getString("LOCATION"));
				board.setAni_name(rs.getString("ANI_NAME"));
				board.setAni_type(rs.getString("ANI_TYPE"));
				board.setAni_bloodtype(rs.getString("ANI_BLOODTYPE"));
				board.setAni_gender(rs.getString("ANI_GENDER"));
				board.setAni_age(rs.getInt("ANI_AGE"));
				board.setResult(rs.getString("RESULT"));
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
