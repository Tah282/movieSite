package com.cgv.vo;

import lombok.Data;

//https://mvnrepository.com/artifact/org.projectlombok/lombok/1.18.28

@Data	// Lombok API
public class Member {
	private int num;
	private String id;
	private String pw;
	private String email;
	private String name;
}
