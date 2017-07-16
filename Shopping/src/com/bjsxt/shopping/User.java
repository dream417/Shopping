package com.bjsxt.shopping;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.bjsxt.shopping.util.DB;

public class User {
	private int id;
	private String userName;
	private String password;
	private String phone;
	private String addr;
	private Timestamp rdate;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public Timestamp getRdate() {
		return rdate;
	}
	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}
	
	public void save(){
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		conn = DB.getConn();
		String sql = "insert into ruser values (null,?,?,?,?,?)";
		try {
			pstmt = DB.getPStmt(conn, sql);
			pstmt.setString(1, userName);
			pstmt.setString(2, password);
			pstmt.setString(3, phone);
			pstmt.setString(4, addr);
			pstmt.setTimestamp(5, rdate);
			pstmt.executeUpdate();
		} catch(SQLException e){
			e.printStackTrace();
		}finally {
			DB.closeStmt(pstmt);
			DB.closeConn(conn);
		}
	}
	
	public static List<User> getUsers(){
		List<User> list = new ArrayList<User>();
		
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			conn = DB.getConn();
			stmt = DB.getStmt(conn);
			String sql = "select * from ruser";
			rs = stmt.executeQuery(sql);
			while(rs.next()){
				User u = new User();
				u.setId(rs.getInt("id"));
				u.setUserName(rs.getString("username"));
				u.setPassword(rs.getString("password"));
				u.setPhone(rs.getString("phone"));
				u.setAddr(rs.getString("addr"));
				u.setRdate(rs.getTimestamp("rdate"));
				list.add(u);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closeRs(rs);
			DB.closeStmt(stmt);
			DB.closeConn(conn);
		}
		
		return list;
	}
	
	public static void deleteUser(int id){
		Connection conn = null;
		Statement stmt = null;
		try {
			conn = DB.getConn();
			stmt = DB.getStmt(conn);
			stmt.executeUpdate("delete from ruser where id=" + id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DB.closeStmt(stmt);
			DB.closeConn(conn);
		}
	}
}
