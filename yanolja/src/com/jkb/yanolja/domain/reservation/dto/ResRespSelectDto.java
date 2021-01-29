package com.jkb.yanolja.domain.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ResRespSelectDto {

//	SELECT m.id, t.id, m.motelName, m.address, t.roomType, t.roomPrice, t.lodgmentPrice, t.roomNumber 
	
	String motelName;
	String address;
	String roomType;
	String roomPrice;
	String lodgmentPrice;
	String roomNumber;
	
	
}
