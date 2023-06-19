package com.example.imple.user.service;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class BCryptPasswordEncodeTest {
	
	BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
	
	@Test
	void encode() {
		var encodeStr = encoder.encode("1234");//회원가입할떄사용
		System.out.println(encodeStr);
	}
	//$2a$10$JvzVWoiDsBtJqiPSDfANquEtP0ZUXr3dbFG9UaAMxnZPHdTiVWR3q
	//$2a$10$QCwlsG.EaT9g6O9QWp23Fe4reVXM3bnpLRSPEC/wz7oPF4v28KNw6
	
	@Test
	void matches() {//로그인할때 사용
		var success = encoder.matches("1234", "$2a$10$JvzVWoiDsBtJqiPSDfANquEtP0ZUXr3dbFG9UaAMxnZPHdTiVWR3q");
		System.out.println(success);
		assertThat(success).isEqualTo(true);

		
		success = encoder.matches("1234", "$2a$10$QCwlsG.EaT9g6O9QWp23Fe4reVXM3bnpLRSPEC/wz7oPF4v28KNw6");
		System.out.println(success);
		assertThat(success).isEqualTo(true);

		
		
		success = encoder.matches("1234", "1234");
		System.out.println(success);
		assertThat(success).isEqualTo(false);
		
	}
	
}
