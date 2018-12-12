package blood119.user.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import blood119.user.vo.UserVO;

public class UserDAO {
	public Connection getConnection() throws SQLException {
		Context initContext=null;
		Connection conn=null;
		DataSource ds=null;
		try {
			initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");
			conn = ds.getConnection();
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conn;
	}
	
	public void registerUser(UserVO uvo)  throws SQLException, NamingException {
		
		String MEMBER_TYPE = "MEMBER";
		String sql = "insert into Member values(?, ?, ?, ?, ?)";
		Connection conn = getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, uvo.getId());
		pstmt.setString(2, uvo.getPassword());
		pstmt.setString(3, MEMBER_TYPE);
		pstmt.setString(4, uvo.getName());
		pstmt.setInt(5, uvo.getPhone());
		pstmt.executeUpdate();

		pstmt.close();
		conn.close();
		
	}
	
	public UserVO getUser(UserVO svo) throws SQLException {
		UserVO vo = null;
		ResultSet rs=null;
		Statement stmt=null;
		Connection conn=null;
		String id=svo.getId();
		String password=svo.getPassword();
		String query ="select * from Member where MEMBER_ID='"+id+"'and MEMBER_PW='"+password+"'";
		conn = getConnection();
		stmt = conn.createStatement();
		 rs=stmt.executeQuery(query);
		 if(rs.next()) {
			 vo=new UserVO();
			 vo.setId(rs.getString("MEMBER_ID"));
			 vo.setPassword(rs.getString("MEMBER_PW"));
			 vo.setType(rs.getString("MEMBER_TYPE"));
			 vo.setName(rs.getString("MEMBER_NAME"));
			 vo.setPhone(rs.getInt("MEMBER_PH"));
		 }
	
	return vo;
	}
}
