package com.cgv.vo;

import lombok.Data;

@Data
public class Ticketing {
	
	public void Ticketing() {
		num = 0;
		id = null;
		movieNum = 0;
		date = null;
		time = null;
		amount = null;
		theater = null;
		seat = 0;
	}
	
	private int num;
	private String id;
	private int movieNum;
	private String date;
	private String time;
	private String amount; 
	private String theater;
	private int seat;
}


