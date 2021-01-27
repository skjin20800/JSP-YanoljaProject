package com.jkb.yanolja.domain.motel;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Motel {
	private int id;
	
	private String motelName ;
	private String motelPic;
	private String motelInfo;
	private String address;
	private String roomPrice; // admin, user
	private String lodgmentPrice;
	private String star;
	private Timestamp createDate;
	private Timestamp updateDate;
}
