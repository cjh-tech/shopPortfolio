package com.cjh.etc;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.cjh.vo.CoronaVO;

public class CoronaApi {
	public CoronaVO getCoronaData() throws Exception  {
		    String address = "http://api.corona-19.kr/korea/?serviceKey=49ade13586aed4e05551eaed242901c89";
			BufferedReader br;
			URL url;
			HttpURLConnection conn;
			String protocol = "GET";
			String json;
			String result = "";
						
			url = new URL(address);
			conn = (HttpURLConnection)url.openConnection();
			conn.setRequestProperty("User-Agent", "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/61.0.3163.100 Safari/537.36");
	        // 서버를 막는뭔가 있기에 이 코드를 씀 
	     	// user-agent로 검색해서 
	        conn.setRequestMethod(protocol);
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			while ((json = br.readLine()) != null) {
				result = result.concat(json); 
			} 
						
			JSONParser jsonParser = new JSONParser();
			Object obj = jsonParser.parse(result);
			JSONObject jsonObj = (JSONObject) obj;
			
			String TotalCase =(String)jsonObj.get("TotalCase");
			String city1p = (String)jsonObj.get("city1p");
			String city2p = (String)jsonObj.get("city2p");
			String city3p = (String)jsonObj.get("city3p");
			String city4p = (String)jsonObj.get("city4p");
			String city5p = (String)jsonObj.get("city5p");
			String updateTime = (String)jsonObj.get("updateTime");
			
			CoronaVO coronaData = new CoronaVO(TotalCase,city1p,city2p,
					city3p,city4p,city5p,updateTime);
			return coronaData;
	}

}
