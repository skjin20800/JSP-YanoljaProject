package com.jkb.yanolja.domain.motel.dto;

import java.sql.Date;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import lombok.Data;

@Data
public class MotelDetailDto {
String motelId;
String checkin;
String checkout;
}
