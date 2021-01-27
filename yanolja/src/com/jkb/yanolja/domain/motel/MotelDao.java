package com.jkb.yanolja.domain.motel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jkb.yanolja.domain.config.DBConnection;
import com.jkb.yanolja.domain.motel.dto.MotelDetailDto;
import com.jkb.yanolja.domain.user.User;
import com.jkb.yanolja.domain.user.dto.LoginReqDto;

public class MotelDao {
	
	
	
//	public Motel findBymotelId(MotelDetailDto dto) {
//		String sql = "SELECT id, username, password, phone, email, userRole, createDate, updateDate FROM user WHERE username = ? AND password = ?";
//		Connection conn = DBConnection.getInstance();
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		
//		try {
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, dto.getUsername());
//			pstmt.setString(2, dto.getPassword());
//			rs = pstmt.executeQuery();
//			
//			if(rs.next()) {
//				User user = User.builder()
//						.id(rs.getInt("id"))
//				.username(rs.getString("username"))
//				.password(rs.getString("password"))
//				.phone(rs.getString("phone"))
//				.email(rs.getString("email"))
//				.userRole(rs.getString("userRole"))
//				.createDate(rs.getTimestamp("createDate"))
//				.updateDate(rs.getTimestamp("updateDate"))
//				.build();
//						System.out.println("로그인 성공");
//				return user;
//			}
//		}catch(Exception e) {
//			e.printStackTrace();
//		}finally {
//			DBConnection.close(conn,pstmt,rs);
//		}
//		
//		return null;
//	}


	
	public List<Motel> findBySeomyeon() {
		String sql = "select id, motelName, motelPic, motelInfo,address,roomPrice,lodgmentPrice,star from motel WHERE REGEXP_LIKE(motelName, '서면|초읍|양정')";
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Motel> motelList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Motel motel = Motel.builder()
						.id(rs.getInt("id"))
						.motelName(rs.getString("motelName"))
						.motelPic(rs.getString("motelPic"))
						.motelInfo(rs.getString("motelInfo"))
						.address(rs.getString("address"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.star(rs.getString("star"))
						.build();				
				motelList.add(motel);
			}
	return motelList;		
	
	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	public List<Motel> findByGangnam() {
		String sql = "select id, motelName, motelPic, motelInfo,address,roomPrice,lodgmentPrice,star from motel WHERE REGEXP_LIKE(motelName, '강남|삼성|역삼|논현|선릉')";
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Motel> motelList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Motel motel = Motel.builder()
						.id(rs.getInt("id"))
						.motelName(rs.getString("motelName"))
						.motelPic(rs.getString("motelPic"))
						.motelInfo(rs.getString("motelInfo"))
						.address(rs.getString("address"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.star(rs.getString("star"))
						.build();				
				motelList.add(motel);
			}
	return motelList;		
	
	
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
}
