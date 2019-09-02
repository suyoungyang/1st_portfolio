package com.way.free.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
		public static Connection getConnection() {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				return DriverManager.getConnection("jdbc:mysql://localhost:3309/test", "root", "1234");
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
			return null;
		}
		
		public static void close(PreparedStatement stmt, Connection conn) {
			if (stmt != null) {
				try {
					if(!stmt.isClosed()) {
						stmt.close();
						}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					stmt = null;
				}
			}
			if (conn != null) {
				try {
					if(!conn.isClosed()) {
						conn.close();
						}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					conn = null;
				}
			}
		}
		
		public static void close(ResultSet rs, PreparedStatement stmt, Connection conn) {
			if (rs != null) {
				try {
					if(!rs.isClosed()) {
						rs.close();
						}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					rs = null;
				}
			}
			if (stmt != null) {
				try {
					if(!stmt.isClosed()) {
						stmt.close();
						}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					stmt = null;
				}
			}
			if (conn != null) {
				try {
					if(!conn.isClosed()) {
						conn.close();
						}
				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				} finally {
					conn = null;
				}
			}
		}
		
	}
