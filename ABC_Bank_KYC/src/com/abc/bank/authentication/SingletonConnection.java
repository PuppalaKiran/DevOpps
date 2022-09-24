package com.abc.bank.authentication;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SingletonConnection {

	private static Connection connection =null;
	private SingletonConnection(){
		
		try {
    		Class.forName("oracle.jdbc.driver.OracleDriver");
    		connection =  DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "oracle", "oracle");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public static Connection getConnection(){
		if(connection==null){
			System.out.println("connection null");
			new SingletonConnection();
		}
		return connection;
	}
	
	
}
