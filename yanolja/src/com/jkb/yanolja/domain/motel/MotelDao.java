package com.jkb.yanolja.domain.motel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.jkb.yanolja.domain.config.DBConnection;
import com.jkb.yanolja.domain.motel.dto.MotelDetailDto;
import com.jkb.yanolja.domain.reservation.Reservation;
import com.jkb.yanolja.domain.reservation.dto.ResListReqDto;
import com.jkb.yanolja.domain.reservation.dto.ResReqDto;
import com.jkb.yanolja.domain.reservation.dto.ResRespSelectDto;
import com.jkb.yanolja.domain.reservation.dto.ReservationDto;
import com.jkb.yanolja.domain.typelist.TypeList;

public class MotelDao {
	
	
	public int resDelete(String typeListId) { 
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("DELETE FROM reservation WHERE typeListId = ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, typeListId);
			
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DBConnection.close(conn, pstmt);
		}
		return -1;
	}
	
	public int reservationFalse(String typeListId) { 
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("UPDATE typelist SET reservation = 'false' WHERE id = ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, typeListId);
			
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DBConnection.close(conn, pstmt);
		}
		return -1;
	}
	
	
	public List<Reservation> findByReservationListAdmin(ResListReqDto dto) {
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("SELECT id ,userId, motelId, typeListId, username, phone, motelName, address, roomType, checkIn, checkOut, " );
		sb.append("roomPrice, lodgmentPrice, roomNumber, createDate,updateDate ");
		sb.append("FROM reservation ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Reservation> reservationList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Reservation reservation = Reservation.builder()
						.id(rs.getInt("id"))
						.userId(rs.getInt("userId"))
						.motelId(rs.getInt("motelId"))
						.typeListId(rs.getInt("typeListId"))
						.username(rs.getString("username"))
						.phone(rs.getString("phone"))
						.motelName(rs.getString("motelName"))
						.address(rs.getString("address"))
						.roomType(rs.getString("roomType"))
						.checkIn(rs.getTimestamp("checkIn"))
						.checkOut(rs.getTimestamp("checkOut"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.roomNumber(rs.getString("roomNumber"))
						.build();				
				reservationList.add(reservation);
			}
			
			return reservationList;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	
	public List<Reservation> findByReservationList(ResListReqDto dto) {
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("SELECT id ,userId, motelId, typeListId, username, phone, motelName, address, roomType, checkIn, checkOut, " );
		sb.append("roomPrice, lodgmentPrice, roomNumber, createDate,updateDate ");
		sb.append("FROM reservation ");
		sb.append("WHERE username =? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<Reservation> reservationList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			
			pstmt.setString(1, dto.getReservation_username());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Reservation reservation = Reservation.builder()
						.id(rs.getInt("id"))
						.userId(rs.getInt("userId"))
						.motelId(rs.getInt("motelId"))
						.typeListId(rs.getInt("typeListId"))
						.username(rs.getString("username"))
						.phone(rs.getString("phone"))
						.motelName(rs.getString("motelName"))
						.address(rs.getString("address"))
						.roomType(rs.getString("roomType"))
						.checkIn(rs.getTimestamp("checkIn"))
						.checkOut(rs.getTimestamp("checkOut"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.roomNumber(rs.getString("roomNumber"))
						.build();				
				reservationList.add(reservation);
			}
			
			return reservationList;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	
	
	
	public int reservationTrue(ResReqDto dto) { 
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("UPDATE typelist SET reservation = 'true' WHERE id = ?");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		try {
			int userId = Integer.parseInt(dto.getTypeListId());
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DBConnection.close(conn, pstmt);
		}
		return -1;
	}
	
	public int saveReservation(ResReqDto dto1, ResRespSelectDto dto2, String[] str) { 
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("INSERT INTO reservation(userId, motelId, typeListId, username, phone, motelName, address, ");
		sb.append("roomType, checkIn, checkOut, roomPrice, lodgmentPrice, roomNumber, createDate,updateDate) ");
		sb.append("VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,now(), now()) ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		try {
			int userId = Integer.parseInt(dto1.getUserId());
			int motelId = Integer.parseInt(dto1.getMotelId());
			int typeListId = Integer.parseInt(dto1.getTypeListId());
			String roomPrice = "미예약";
			String lodgmentPrice = "미예약";
			if(dto1.getCars().equals("room")) {
				roomPrice = dto2.getRoomPrice();
			}else if(dto1.getCars().equals("lodgment")){
				lodgmentPrice = dto2.getLodgmentPrice();
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, userId);
			pstmt.setInt(2, motelId);
			pstmt.setInt(3, typeListId);
			pstmt.setString(4, dto1.getUsernickname());
			pstmt.setString(5, dto1.getUserphone());
			pstmt.setString(6, dto2.getMotelName());
			pstmt.setString(7, dto2.getAddress());
			pstmt.setString(8, dto2.getRoomType());
			pstmt.setString(9, str[0]);//체크인
			pstmt.setString(10, str[1]);//체크아웃
			pstmt.setString(11, roomPrice);//대실가격
			pstmt.setString(12, lodgmentPrice);//숙박가격			
			pstmt.setString(13, dto2.getRoomNumber());
			
			int result = pstmt.executeUpdate();
			
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DBConnection.close(conn, pstmt);
		}
		return -1;
	}
	
	public ResRespSelectDto findByMotelAndTypeList(ResReqDto dto) {
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		
		sb.append("SELECT m.id, t.id, m.motelName motelName, m.address, t.roomType, t.roomPrice, t.lodgmentPrice, t.roomNumber ");
		sb.append("FROM motel m inner join typelist t on m.id = t.motelId ");
		sb.append("where t.id= ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getTypeListId());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				ResRespSelectDto type = ResRespSelectDto.builder()
						.motelName(rs.getString("motelName"))
						.address(rs.getString("address"))
						.roomType(rs.getString("roomType"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.roomNumber(rs.getString("roomNumber"))
						.build();				
				
				return type;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	
	
	public TypeList findByOneTypeList(ReservationDto dto) {
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		  
		sb.append("SELECT  id, roomType, roomPrice, lodgmentPrice, roomNumber ");
		sb.append("FROM typelist ");
		sb.append("where reservation = 'false' AND motelId=? AND roomType = ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<TypeList> typeList = new ArrayList<>();
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getRes_motelId());
			pstmt.setString(2, dto.getRes_roomType());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				TypeList type = TypeList.builder()
						.id(rs.getInt("id"))
						.roomType(rs.getString("roomType"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.roomNumber(rs.getString("roomNumber"))
						.build();				
				return type;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	
	public List<TypeList> checklist_info(String str1, String str2) {
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		  
		sb.append("SELECT  DISTINCT roomType, roomPic, roomPrice, lodgmentPrice ");
		sb.append("FROM typelist ");
		sb.append("WHERE checkIn <= ? AND reservation = 'false' AND motelId = ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<TypeList> typeList = new ArrayList<>();
		
		try {
			String []checkinSplit = str1.split("/");
			String checkin = checkinSplit[2]+"-"+checkinSplit[0]+"-"+checkinSplit[1];
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, checkin);
			pstmt.setString(2, str2);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				TypeList type = TypeList.builder()
						.roomPic(rs.getString("roomPic"))
						.roomType(rs.getString("roomType"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.build();				
				typeList.add(type);
			}
			return typeList;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	
	
	public Motel findBymotelId(String motelId) {
		String sql = "select id, motelName, motelPic, motelInfoPic ,motelInfo,address,roomPrice,lodgmentPrice,star from motel WHERE id = ?";
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, motelId);
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				String motelInfoList = rs.getString("motelInfoPic");
				String []motelInfoSplit = motelInfoList.split(",");
				
				Motel motel = Motel.builder()
						.id(rs.getInt("id"))
						.motelName(rs.getString("motelName"))
						.motelPic(rs.getString("motelPic"))
						.motelInfo(rs.getString("motelInfo"))
						.motelInfoPic(motelInfoSplit)
						.address(rs.getString("address"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.star(rs.getString("star"))
						.build();			
				
				return motel;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}
	
	
	public List<TypeList> findBymotelType(MotelDetailDto dto) {
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		  
		sb.append("SELECT  DISTINCT roomType, roomPic, roomPrice, lodgmentPrice ");
		sb.append("FROM typelist ");
		sb.append("WHERE checkIn <= ? AND reservation = 'false' AND motelId = ? ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<TypeList> typeList = new ArrayList<>();
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			String []checkinSplit = dto.getCheckin().toString().split("/");
			String checkin = checkinSplit[2]+"-"+checkinSplit[0]+"-"+checkinSplit[1];
			
			
			pstmt.setString(1, checkin);
			pstmt.setString(2, dto.getMotelId());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				TypeList type = TypeList.builder()
						.roomPic(rs.getString("roomPic"))
						.roomType(rs.getString("roomType"))
						.roomPrice(rs.getString("roomPrice"))
						.lodgmentPrice(rs.getString("lodgmentPrice"))
						.build();				
				typeList.add(type);
			}
			
			return typeList;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}


	
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
