package com.cgv.vo;

import lombok.Data;

@Data
public class Board {
	private int num;
	private String writer;
	private String email;
	private String subject;
	private String password;
	private String reg_date;
	private int ref;
	private int re_step;
	private int re_level;
	private int readcount;
	private String content;
	private String manager;
}
