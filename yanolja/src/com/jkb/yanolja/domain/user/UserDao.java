package com.jkb.yanolja.domain.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.jkb.yanolja.domain.config.DBConnection;
import com.jkb.yanolja.domain.user.dto.JoinReqDto;
import com.jkb.yanolja.domain.user.dto.LoginReqDto;


public class UserDao {
	

	public int save(JoinReqDto dto) { // 회원가입
	
		
		StringBuffer sb = new StringBuffer(); // String전용 컬렉션(수집)이다, 동기화되어있음,
		sb.append("INSERT INTO user(username, password, phone, email, userRole, createDate, updateDate) ");
		sb.append("VALUES(?, ?, ?, ?, 'user', now(), now()) ");
		String sql = sb.toString();	
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		try {
			System.out.println(dto.toString());
			System.out.println("갯 유절네임"+dto.getUsername());
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getPhone());
			pstmt.setString(4, dto.getEmail());
			int result = pstmt.executeUpdate();
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally { // 무조건 실행
			DBConnection.close(conn, pstmt);
		}
		return -1;
	}

	public void update() { // 회원수정

	}
	
	public User findByUsernameAndPassword(LoginReqDto dto) {
		String sql = "SELECT id, username, password, phone, email, userRole, createDate, updateDate FROM user WHERE username = ? AND password = ?";
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPassword());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				User user = User.builder()
						.id(rs.getInt("id"))
				.username(rs.getString("username"))
				.password(rs.getString("password"))
				.phone(rs.getString("phone"))
				.email(rs.getString("email"))
				.userRole(rs.getString("userRole"))
				.createDate(rs.getTimestamp("createDate"))
				.updateDate(rs.getTimestamp("updateDate"))
				.build();
						System.out.println("로그인 성공");
				return user;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return null;
	}

	public int usernameCheck(String username) { // 아이디 중복 체크
		String sql = "SELECT * FROM user WHERE username = ?";
		Connection conn = DBConnection.getInstance();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				return 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
		
		return -1;
	}

	public void findByUsername( ) { // 회원정보보기

	}

}
