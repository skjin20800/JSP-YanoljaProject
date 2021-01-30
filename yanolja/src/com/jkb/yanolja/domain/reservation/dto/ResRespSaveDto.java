package com.jkb.yanolja.domain.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ResRespSaveDto {

	int userId;
	int motelId;
	int typeListId;
	String username;
	String phone;
	String motelName;
	String address;
	String roomType;
	String checkIn;
	String checkOut;
	String roomPrice;
	String lodgmentPrice;
	String roomNumber;
	
}