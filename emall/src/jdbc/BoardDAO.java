package jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class BoardDAO {
	
	public ArrayList<BoardDTO> getList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM board";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<BoardDTO> boards = new ArrayList<BoardDTO>();
			
			while(rs.next()) {
				boards.add(new BoardDTO(rs.getString("bid"),
											rs.getString("btitle"),
											rs.getString("bcontent"),
											rs.getString("buser"),
											rs.getString("bimage"),
											rs.getString("bdate")));
			}
			return boards;
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		
	}
	
	
	
	
	public BoardDTO getDetail(String bid) throws NamingException, SQLException {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM board WHERE bid = ?";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			
			rs.next();
			
			bid = rs.getString(1);
			String btitle = rs.getString(2);
			String bcontent = rs.getString(3);
			String buser = rs.getString(4);
			String bimage = rs.getString(4);
			String bdate = rs.getString(5);

			
			BoardDTO board = new BoardDTO(bid, btitle, bcontent, buser, bimage, bdate);
			
			return board;
			
	} finally {
		if(rs != null) rs.close();
		if(pstmt != null) pstmt.close();
		if(conn != null) conn.close();
	}
	
	}
	
	
	
	
	public boolean insert(String btitle, String bcontent, String buser, String bimage)
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			String sql = "INSERT INTO board (btitle, bcontent, buser, bimage) VALUES (?,?,?,?)";
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, btitle);
				pstmt.setString(2, bcontent);
				pstmt.setString(3, buser);
				pstmt.setString(4, bimage);
			int result = pstmt.executeUpdate();
			
			return (result==1) ? true : false;			
			
		} finally {
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
	}
	
	
}
