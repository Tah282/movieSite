package com.cgv.vo;

import lombok.Data;

@Data
public class Ticketing {
	private int num;
	private String id;
	private int movieNum;
	private String date;
	private String time;
	private String amount; 
	private String theater;
	private int seat;
}
