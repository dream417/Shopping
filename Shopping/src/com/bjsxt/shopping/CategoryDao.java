package com.bjsxt.shopping;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

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
			DB.closePStmt(pstmt);
			DB.closeConn(conn);
		}
		
	}
	
	public static void getCategory(List<Category> list,int id){
		Connection conn = null;
		
		try {
			conn = DB.getConn();
			getCategory(conn, list, id);
		}finally{
			DB.closeConn(conn);
		}
	}

	private static void getCategory(Connection conn, List<Category> list,int id){
		ResultSet rs = null;
		String sql = "select * from category where pid=" + id;
		try {
			rs = DB.executeQuery(conn, sql);
			while(rs.next()){
				Category c = new Category();
				c.setId(rs.getInt("id"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("name"));
				c.setDescr(rs.getString("descr"));
				c.setLeaf(rs.getInt("isleaf")==0 ? true : false);
				c.setGrade(rs.getInt("grade"));
				list.add(c);
				if(!c.isLeaf()){
					getCategory(conn, list, c.getId());
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
		}
	}	
	
	public static void addChildCategory(int pid, String name, String descr) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		conn = DB.getConn();
		try {
				conn.setAutoCommit(false);
			
				rs = DB.executeQuery(conn, "select * from category where id = " + pid);
				int parentGrade = 0;
				if(rs.next())
					parentGrade = rs.getInt("grade");
				
				String sql = "insert into category values (null,?,?,?,?,?)";
				//存储新的category
				pstmt = DB.getPStmt(conn, sql);
			
				pstmt.setInt(1, pid);
				pstmt.setString(2,name);
				pstmt.setString(3, descr);
				pstmt.setInt(4,  0);
				pstmt.setInt(5, parentGrade+1);
				pstmt.executeUpdate();
				
				//更新父节点
				DB.executeUpdate(conn, "update category set isleaf = 1 where id = " + pid);
				
				conn.commit();
				conn.setAutoCommit(true);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);	
			DB.closePStmt(pstmt);
			DB.closeConn(conn);
		}
	}

	public static Category loadCategory(int id) {
		// TODO Auto-generated method stub
		Connection conn = null;
		ResultSet rs = null;
		Category c =null;
		conn = DB.getConn();
		try {
			rs = DB.executeQuery(conn, "select * from category where id = " + id);
			if(rs.next()){
				c = new Category();
				c.setId(rs.getInt("id"));
				c.setPid(rs.getInt("pid"));
				c.setName(rs.getString("name"));
				c.setDescr(rs.getString("descr"));
				c.setLeaf(rs.getInt("isleaf")==0 ? true : false);
				c.setGrade(rs.getInt("grade"));			
			}	
		} catch (SQLException e) {

			e.printStackTrace();
		}finally{
			DB.closeRs(rs);	
			DB.closeConn(conn);
		}
		
		return c;
	}

	public static void deleteCategory(int id, int pid) {
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select * from category where pid=" + id;
		conn = DB.getConn();
		try {
			rs = DB.executeQuery(conn, sql);
			while(rs.next()){
				deleteCategory(rs.getInt("id"),id);
			}
			DB.executeUpdate(conn, "delete from category where id = " + id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);;
			DB.closeConn(conn);;
		}
	}
	
	public static void update(int pid){
		Connection conn = null;
		ResultSet rs = null;
		String sql = "select count(*) from category where id=" + pid;
		conn = DB.getConn();
		try {
			rs = DB.executeQuery(conn, sql);
			rs.next();
			int count = rs.getInt(1);
			if(count<=0){
				DB.executeUpdate(conn, "update category set isleaf = 0 where id = " + pid);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);;
			DB.closeConn(conn);;
		}
	}

	public static void categoryUpdate(Category c) {
		// TODO Auto-generated method stub
		Connection conn =null;
		PreparedStatement pstmt = null;
		int id = c.getId();
		String sql = "update category set name=?,descr=? where id="+id;
		
		try {
			conn=DB.getConn();
			pstmt=DB.getPStmt(conn, sql);
			
			pstmt.setString(1, c.getName());
			pstmt.setString(2, c.getDescr());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closePStmt(pstmt);
			DB.closeConn(conn);
		}
	}
}
