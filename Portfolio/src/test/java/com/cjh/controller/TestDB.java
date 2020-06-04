package com.cjh.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.cjh.etc.CoronaApi;
import com.cjh.etc.CoronaTimer;
import com.cjh.vo.CoronaVO;

public class TestDB {
	public static void main(String[] args) throws Exception{
		CoronaApi corona = new CoronaApi();		
		CoronaVO coronaData = corona.getCoronaData();
		CoronaTimer coronaUpdate = new CoronaTimer();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;  
			
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC";
		conn = DriverManager.getConnection(url, "root", "1234");
	    stmt = conn.createStatement();
	    int[] arr = new int[7];
		String sqlSelect = "select * from setdata1 order by date asc limit 7";  
	    rs = stmt.executeQuery(sqlSelect);
	    int test = 0 ;
	    int test1 = 0 ;
	    int test2 = 0 ;
	    int test3 = 0 ;
	    int test4 = 0 ;
	    int test5 = 0 ;
	    int test6 = 0 ;
	    while(rs.next()) {
	       
	    }
	    System.out.println("1"+test);
	    System.out.println(test1);
	    System.out.println(test2);
	    System.out.println(test3);
	    System.out.println(test4);
	    System.out.println(test5);
	    System.out.println("7"+test6);
		
	}

}
