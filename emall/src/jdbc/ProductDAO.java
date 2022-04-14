package jdbc;

import java.sql.*;
import java.util.ArrayList;

import javax.naming.NamingException;

import util.ConnectionPool;

public class ProductDAO {
	
	public ArrayList<ProductDTO> getList()
	throws NamingException, SQLException {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "SELECT * FROM product";
			
			conn = ConnectionPool.get();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			ArrayList<ProductDTO> products = new ArrayList<ProductDTO>();
			
			while(rs.next()) {
				products.add(new ProductDTO(rs.getString("pid"),
											rs.getString("pname"),
											rs.getString("pprice"),
											rs.getString("pdesc"),
											rs.getString("pmanu"),
											rs.getString("pcate"),
											rs.getString("pcondi")));
			}
			return products;
			
		}finally {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		}
		
		
	}

}
