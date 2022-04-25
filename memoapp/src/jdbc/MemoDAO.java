package jdbc;

import java.sql.*;
import java.util.ArrayList;

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

	public ArrayList<MemoDTO> getList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM memo WHERE uid='test' AND mdone='1' ORDER BY mdate DESC";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MemoDTO> memos = new ArrayList<MemoDTO>();
			
			while (rs.next()) {
				memos.add(new MemoDTO(rs.getString("mid"),
									  rs.getString("uid"),
									  rs.getString("memo"),
									  rs.getString("mdone"),
									  rs.getString("mdate")));
			}
			return memos;
			
		} finally {
			if(rs!=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	
	public ArrayList<MemoDTO> getdelList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM memo WHERE uid='test' AND mdone='0' ORDER BY mdate DESC";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			ArrayList<MemoDTO> memos = new ArrayList<MemoDTO>();
			
			while (rs.next()) {
				memos.add(new MemoDTO(rs.getString("mid"),
									  rs.getString("uid"),
									  rs.getString("memo"),
									  rs.getString("mdone"),
									  rs.getString("mdate")));
			}
			return memos;
			
		} finally {
			if(rs!=null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
	}
	
	
	
	public boolean delete(String mid) throws NamingException, SQLException	{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
		String sql = "UPDATE memo SET mdone = '0' WHERE mid = ?";
		conn = ConnectionPool.get();
		
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);

		
		int result = pstmt.executeUpdate();
		
		return (result == 1) ? true : false;
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}

}
	
	
	
	
	public boolean undelete(String mid) throws NamingException, SQLException	{
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
		String sql = "UPDATE memo SET mdone = '1' WHERE mid = ?";
		conn = ConnectionPool.get();
		
		pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mid);

		
		int result = pstmt.executeUpdate();
		
		return (result == 1) ? true : false;
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}

}
	
	
	
	
}