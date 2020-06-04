package com.cjh.etc;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

//@Service
public class CoronaSchedulerTest {
	
	@Scheduled( cron = "0/5 * * * * *")
	public void test() {
		System.out.println("5초에 한번 스케쥴러 테스트중");
	}
}
