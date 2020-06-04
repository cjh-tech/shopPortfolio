package com.cjh.etc;

import com.cjh.vo.CoronaVO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class CoronaDataSet {
	public int[] barData() throws Exception{
		CoronaApi corona = new CoronaApi();		
		CoronaVO coronaData = corona.getCoronaData();
		CoronaTimer coronaUpdate = new CoronaTimer();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;  
		//aws 배포시  id  : root  -> portfolio
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC";
		conn = DriverManager.getConnection(url, "root", "1234");
		
	    stmt = conn.createStatement();
		String sqlSelect = "select * from bar_data order by idk desc limit 7";  
	    rs = stmt.executeQuery(sqlSelect);
	    int[] arr = new int[7];
	    int i = 0;
	       	while(rs.next()) {
		    	arr[i++] = rs.getInt(2);
		    }
	    return arr;
	}
	
	public String[] doughnutData() throws Exception{
		CoronaApi corona = new CoronaApi();		
		CoronaVO coronaData = corona.getCoronaData();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;  
		
		//aws 배포시  id  : root  -> portfolio
		Class.forName("com.mysql.cj.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC";
		conn = DriverManager.getConnection(url, "root", "1234");
		stmt = conn.createStatement();
		String sqlSelect = "select * from doughnut_data where idk = 1";
		rs= stmt.executeQuery(sqlSelect);
		
		String[] arr = new String[5]; 
		while(rs.next()) {
			arr[0] = rs.getString("daegu");
			arr[1] = rs.getString("gyeongbuk");
			arr[2] = rs.getString("other");
			arr[3] = rs.getString("gyeonggi");
			arr[4] = rs.getString("seoul");
		}
			
		return arr;
	}
	
//	public String[] worldData() throws Exception{
//		CoronaApi corona = new CoronaApi();		
//		CoronaVO coronaData = corona.getCoronaData();
//		Connection conn = null;
//		Statement stmt = null;
//		ResultSet rs = null;
//		PreparedStatement pstmt = null;  
//			    
//		Class.forName("com.mysql.cj.jdbc.Driver");
//		String url = "jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC";
//		conn = DriverManager.getConnection(url, "root", "1234");
//		stmt = conn.createStatement();
//		String sqlSelect = "select * from setdata where idx = 1";
//		rs= stmt.executeQuery(sqlSelect);
//		
//		String[] arr = new String[8];
//		while(rs.next()) {
//			arr[0] = rs.getString("first");
//			arr[1] = rs.getString("second");
//			arr[2] = rs.getString("third");
//			arr[3] = rs.getString("fourth");
//			arr[4] = rs.getString("fifth");
//			arr[5] = rs.getString("sixth");
//			arr[6] = rs.getString("seventh");
//		}
//		
//		String defaultMessage = "�ڷγ����̷���������-19 ���� �߻���Ȳ (4.20. 00�� ����)";
//		String changeMessage = coronaData.getUpdateTime();
//		
//		arr[7] = coronaData.getTotalCase();
//		
//		if(!(defaultMessage.equals(changeMessage))) {
//			for(int i = 0; i <= 6; i++) {
//				arr[i] = arr[i+1];
//			}
//		}
//		
//		String sqlUpdate = "update setdata set(first,second,third,fourth,fifth,sixth,seventh) ="
//				+ "(?,?,?,?,?,?,?)";
//		pstmt = conn.prepareStatement(sqlUpdate);
//		pstmt.setString(1, arr[0]);
//		pstmt.setString(2, arr[1]);
//		pstmt.setString(3, arr[2]);
//		pstmt.setString(4, arr[3]);
//		pstmt.setString(5, arr[4]);
//		pstmt.setString(6, arr[5]);
//		pstmt.setString(7, arr[6]);
//		
//		return arr;
//	}
}
