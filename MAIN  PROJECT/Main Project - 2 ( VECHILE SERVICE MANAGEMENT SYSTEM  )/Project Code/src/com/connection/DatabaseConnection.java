package com.connection;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DatabaseConnection {

	public static Connection connection;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourist_guide_system", "Creator", "MummyLucky432@#");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return (connection);
	}

	public static void CloseConnection() {
		if (connection != null) {
			try {
				connection.close();
			} catch (SQLException ex) {
				ex.printStackTrace();
				
			}
		}
	}

	public static ResultSet getResultFromSqlQuery(String SqlQueryString) {
		ResultSet rs = null;
		try {
			if (connection == null) {
				getConnection();
			}
			rs = connection.createStatement().executeQuery(SqlQueryString);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return rs;
	}

	public static int insertUpdateFromSqlQuery(String SqlQueryString) {
		int i = 2;
		try {
			if (connection == null) {
				getConnection();
			}
			i = connection.createStatement().executeUpdate(SqlQueryString);

		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return i;
	}
	
	public static String generateTourFeedbackId() {
		String fid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		fid = sdf.format(new Date());
		fid = "F" + fid;
		System.out.println("User Id " + fid);
		return fid;
	}
	
	public static String generateTourUserId() {
		String uid = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		uid = sdf.format(new Date());
		uid = "U" + uid;
		System.out.println("User Id " + uid);
		return uid;
	}
	
	public static String generateTourPlaceId() {
		String id = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
		id = sdf.format(new Date());
		id = "T" + id;
		System.out.println("Tourist Place Id " + id);
		return id;
	}
}
