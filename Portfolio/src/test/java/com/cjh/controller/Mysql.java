package com.cjh.controller;

import static org.junit.Assert.*;

import java.sql.DriverManager;
import java.sql.Connection;
import org.junit.Test;

public class Mysql {
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	private static final String URL = "jdbc:mysql://127.0.0.1:3306/portfolio";
	private static final String USER = "root";
	private static final String PW = "1234";
	
	@Test
	public void testConnection() throws Exception{
		Class.forName(DRIVER);
		try(Connection con = DriverManager.getConnection(URL,USER,PW)){
			System.out.println("연결 성공 ");
			
		}catch(Exception e) {
			System.out.println("연결 실패 ");
			e.printStackTrace();
		}
	}

}
