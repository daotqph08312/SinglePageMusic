package com.angular;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages={"com.angular"})
public class FullStackAngularSpaApplication {

	public static void main(String[] args) {
		SpringApplication.run(FullStackAngularSpaApplication.class, args);
	}

}
