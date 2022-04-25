package jdbc;

import java.sql.*;

import javax.naming.NamingException;

import util.ConnectionPool;

public class MemoDAO {
	
	public boolean insert(String memo, String uid) throws NamingException, SQLException	{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
		String sql = "INSERT INTO memo (uid, memo, mdone) VALUES(?,?,?)";
		conn = ConnectionPool.get();
		
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, uid);
			pstmt.setString(2, memo);
			pstmt.setString(3, "1");
		
		int result = pstmt.executeUpdate();
		
		return (result == 1) ? true : false;
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}

}

	
	
	
	
	
}