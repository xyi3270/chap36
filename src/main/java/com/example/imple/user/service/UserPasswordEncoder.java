package com.example.imple.user.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;


//@Component
@Slf4j
public class UserPasswordEncoder implements PasswordEncoder{

	@Override
	public String encode(CharSequence rawPassword) {
		
		return rawPassword.toString();
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {//rawPassword login1234, encodedPassword userdetail에서 오는거
		log.info("rawpassword = {}", rawPassword);
		log.info("encodedPassword = {}", encodedPassword);
		return encodedPassword.equals(encode(rawPassword));
	}

}
