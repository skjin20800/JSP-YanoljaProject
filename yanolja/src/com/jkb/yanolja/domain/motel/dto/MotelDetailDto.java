package com.jkb.yanolja.domain.motel.dto;

import java.sql.Date;
import java.sql.Timestamp;

import lombok.Data;

@Data
public class MotelDetailDto {
String motelId;
Object checkin;
Object checkout;
}
