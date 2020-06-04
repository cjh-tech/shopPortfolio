package com.cjh.etc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.cjh.vo.CoronaVO;
@Service
public class CoronaTimer {
	
	@Scheduled( cron = "0 10 10 ? * *")
	public void coronaSchedule() {
		 try {
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
									
				String defaultMessage = "코로나바이러스감염증-19 국내 발생현황 (4.10. 00시 기준)";
				String changeMessage = coronaData.getUpdateTime();
				String stringTotal = coronaData.getTotalCase();
				int resultTotal = Integer.parseInt(coronaData.getTotalCase().replace(",", ""));
				
				int beforePatient = 0 ;
				stmt = conn.createStatement();
				String sqlSelect = "select * from bar_data order by idk desc limit 1";
				rs = stmt.executeQuery(sqlSelect);
				while(rs.next()) {
					beforePatient = rs.getInt("patient");
				}
				
				int gap = 0; 
				if(!(defaultMessage.equals(changeMessage))) {
					gap = resultTotal - beforePatient;
					String sqlInsert1 = "insert into bar_data (patient,gap,day,update_time) value(?,?,curdate(),now())";
					pstmt = conn.prepareStatement(sqlInsert1);
					pstmt.setInt(1, resultTotal);
					pstmt.setInt(2, gap);
					pstmt.executeUpdate();
					
					double[] arr = new double[5];
					arr[0] = Double.valueOf(coronaData.getCity1p());
					arr[1] = Double.valueOf(coronaData.getCity2p());
					arr[2] = Double.valueOf(coronaData.getCity3p());
					arr[3] = Double.valueOf(coronaData.getCity4p());
					arr[4] = Double.valueOf(coronaData.getCity5p());
					String sqlInsert2 = "insert into doughnut_data(daegu,gyeongbuk,other,gyeonggi,seoul,day) values"
							+ "(?,?,?,?,?,curdate())";
					pstmt = conn.prepareStatement(sqlInsert2);
					pstmt.setDouble(1, arr[0]);
					pstmt.setDouble(2, arr[1]);
					pstmt.setDouble(3, arr[2]);
					pstmt.setDouble(4, arr[3]);
					pstmt.setDouble(5, arr[4]);
					pstmt.executeUpdate();
					
					System.out.println("코로나 스케쥴러 10시 10 분 실행확인");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
 		   
		  

