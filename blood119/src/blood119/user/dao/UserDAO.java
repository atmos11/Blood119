package blood119.user.dao;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
}
