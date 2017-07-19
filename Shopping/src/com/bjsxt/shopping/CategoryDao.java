package com.bjsxt.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bjsxt.shopping.util.DB;

public class CategoryDao {
	
	public static void save(Category c){
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "";
		conn = DB.getConn();
		if(c.getId()==-1){
			sql = "insert into category values (null,?,?,?,?,?)";
		}else{
			sql = "insert into category values (" + c.getId()+",?,?,?,?,?)";
		}
		try {
			pstmt = DB.getPStmt(conn, sql);
			
			pstmt.setInt(1, c.getPid());
			pstmt.setString(2,c.getName());
			pstmt.setString(3, c.getDescr());
			pstmt.setInt(4, c.isLeaf() ? 0 : 1);
			pstmt.setInt(5, c.getGrade());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
}
