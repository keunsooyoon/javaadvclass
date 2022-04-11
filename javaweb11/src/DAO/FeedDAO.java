package DAO;

import java.sql.*;
import javax.naming.NamingException;
import util.ConnectionPool;

public class FeedDAO {
	
	public boolean insert(String uid, String ucon) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement stmt = null;
		
		try {
			String sql = "INSERT INTO feed(id, content) VALUES(?,?)";
			
			conn = ConnectionPool.get();
			stmt = conn.prepareStatement(sql);
				stmt.setString(1, uid);
				stmt.setString(2, ucon);
				
				int count = stmt.executeUpdate();
				return (count > 0) ? true : false;
		} finally {
			if(stmt != null) stmt.close();
			if(conn != null) conn.close();
		}
		
	}
}
