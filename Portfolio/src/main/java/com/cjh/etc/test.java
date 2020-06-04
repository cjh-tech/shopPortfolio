package com.cjh.etc;


import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.stereotype.Service;

public class test {
	public static void main(String[] args) {
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("MM/dd");
        
		System.out.println(format.format(today));
		String[] result = new String[7];
		result[0]=format.format(today);
				
		for(int i = 1 ; i < 7 ; i++) {
			Date beforeday1 = new Date();
			beforeday1 = new Date(beforeday1.getTime()+(1000*60*60*24*-i));
			SimpleDateFormat dSdf = new SimpleDateFormat("MM/dd");
			String yesterday = dSdf.format(beforeday1);
			result[i] = yesterday;
		}
		
		

	}
}
