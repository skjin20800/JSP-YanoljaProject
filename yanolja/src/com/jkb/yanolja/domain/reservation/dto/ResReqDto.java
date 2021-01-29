package com.jkb.yanolja.domain.reservation.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ResReqDto {

String motelId;
String userId;
String typeListId;
String checkin_input;
String checkin_inputT;
String checkout_input;
String checkout_inputT;
String usernickname;
String userphone;
String cars;
String lodgment;

}
