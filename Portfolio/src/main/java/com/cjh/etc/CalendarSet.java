package com.cjh.etc;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class CalendarSet {
	public String[] setDoughutCalendar() {
		Calendar cal = Calendar.getInstance();
		String year = Integer.toString(cal.get(Calendar.YEAR));
		String mon = Integer.toString(cal.get(Calendar.MONTH)+1);
		String day = Integer.toString(cal.get(Calendar.DAY_OF_MONTH));
		String[] result = new String[3];
		result[0] = year;
		result[1] = mon;
		result[2] = day;
		return result;
	}
	// 올해달력만들기 
	public String[] setBarCalendar() {
		Date today = new Date();
		SimpleDateFormat format = new SimpleDateFormat("MM/dd");
        
		String[] result = new String[7];
		result[0]=format.format(today);
				
		for(int i = 1 ; i < 7 ; i++) {
			Date beforeday1 = new Date();
			beforeday1 = new Date(beforeday1.getTime()+(1000*60*60*24*-i));
			SimpleDateFormat dSdf = new SimpleDateFormat("MM/dd");
			String yesterday = dSdf.format(beforeday1);
			result[i] = yesterday;
		}
		return result;
   }
}
