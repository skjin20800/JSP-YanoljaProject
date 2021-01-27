package com.jkb.yanolja.domain.user;
import java.sql.Timestamp;

import com.jkb.yanolja.domain.user.dto.LoginReqDto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
	private int id;
	private String username;
	private String password;
	private String phone;
	private String email;
	private String userRole; // admin, user
	private Timestamp createDate;
	private Timestamp updateDate;
	
	
	
}