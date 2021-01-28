package com.jkb.yanolja.domain.typelist;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class TypeList {
	private int id;
	private int motelId;
	private String roomPic;
	private String roomType;
	private String roomPrice;
	private String lodgmentPrice;
	private String roomNumber; // admin, user
	private String reservation;
	private Timestamp checkIn;
	private Timestamp checkOut;
	private Timestamp createDate;
	private Timestamp updateDate;
}