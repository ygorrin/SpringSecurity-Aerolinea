package com.duoc.prueba2;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class Prueba2Application implements CommandLineRunner{
	
	@Autowired
	private BCryptPasswordEncoder passEncoder;

	public static void main(String[] args) {
		SpringApplication.run(Prueba2Application.class, args);
	}
	
	@Override
	public void run(String... args) throws Exception {
//		String admin = "admin";
//		String usertur = "usertur";
//		String userpre = "userpre";
//		
//		System.out.println("admin  "+ passEncoder.encode(admin));
//		System.out.println("usertur  "+ passEncoder.encode(usertur));
//		System.out.println("userpre  "+ passEncoder.encode(userpre));

		
	}

}
