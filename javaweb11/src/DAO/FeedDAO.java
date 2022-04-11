package DAO;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import DTO.FeedDTO;
import util.ConnectionPool;

public class FeedDAO {
	public boolean insert(String uid, String ucon) throws NamingException,SQLException{
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			String sql="INSERT INTO feed(id,content) VALUES(?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, uid);
				pstmt.setString(2, ucon);
			int count = pstmt.executeUpdate(); // 정보가 넘어오지는 않지만 성공과 실패가 0 과 1로 넘어온다
			return (count>0) ? true : false;
		}finally {
			if(pstmt !=null) pstmt.close();
			if(conn !=null) conn.close();
		}
	}
	
	public ArrayList<FeedDTO> getList() throws NamingException, SQLException {
}
