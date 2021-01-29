package com.jkb.yanolja.domain.reservation;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Reservation {
	private int id;
	private int userId;
	private int motelId;
	private int typeListId;
	private String username;
	private String phone;
	private String motelName;
	private String address;
	private String roomType; // admin, user
	private String roomNumber;	
	private String roomPrice;
	private String lodgmentPrice;
	private Timestamp checkIn;
	private Timestamp checkOut;
	private Timestamp createDate;
	private Timestamp updateDate;
}