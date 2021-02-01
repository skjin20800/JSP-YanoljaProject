package com.jkb.yanolja.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.jkb.yanolja.anno.RequestMapping;
import com.jkb.yanolja.domain.motel.dto.MotelDetailDto;
import com.jkb.yanolja.domain.reservation.dto.ResListReqDto;
import com.jkb.yanolja.domain.reservation.dto.ResReqDto;
import com.jkb.yanolja.domain.reservation.dto.ReservationDto;
import com.jkb.yanolja.domain.user.dto.JoinReqDto;
import com.jkb.yanolja.domain.user.dto.LoginReqDto;
import com.jkb.yanolja.service.MotelService;
import com.jkb.yanolja.service.UserService;

@WebServlet("/user")
public class FrontController<T> {
	
UserService userService = new UserService();
MotelService motelService = new MotelService();
List<T> respList = new ArrayList<>();
	
    public FrontController() {
        super();
    }
    
    @SuppressWarnings("unchecked")
	@RequestMapping("/index")
	public List<T> index() {
		respList.add((T) "/index.jsp");
		respList.add(null);
		return respList;
	}
    

	@SuppressWarnings("unchecked")
	@RequestMapping("/join")
	public List<T> join() {
		respList.add((T) "/userjoin.jsp");
		respList.add(null);
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/joinReq")
	public List<T> join(JoinReqDto dto) {
		int result = userService.회원가입(dto);
		if(result == 1) {
			respList.add((T) "/index.jsp");	
		}else {
			respList.add((T) "/userjoin.jsp");
		}
		respList.add(null);
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/login")
	public List<T> login() {
		respList.add((T) "/userlogin.jsp");
		respList.add(null);
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/loginReq")
	public List<T> loginReq(LoginReqDto dto) {	
		if(userService.로그인(dto) != null) {
			System.out.println("성공 : " + userService.로그인(dto));
			respList.add((T) "/index.jsp");	
		}else {
			System.out.println("실패 : " + userService.로그인(dto));
			respList.add((T) "/userlogin.jsp");	
		}
		respList.add((T) userService.로그인(dto));
		return respList;
	}
	
	@RequestMapping("/user")
	public void user() {
		System.out.println("user() 함수 호출됨");
	}
	
	@RequestMapping("/usernameCheck")
	public int usernameCheck(String username) {
		return userService.아이디중복체크(username);
	}
	
	@RequestMapping("/motelArea")
	public List<T> motelArea() {	
		respList.add((T) "/motelArea.jsp");
		respList.add(null);
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/motelList_Seomyeon")
	public List<T> motelList_Seomyeon() {	
		respList.add((T) "/motelList.jsp");
		respList.add((T) motelService.motelSeomyeon());
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/motelList_Gangnam")
	public List<T> motelList_Gangnam() {	
		respList.add((T) "/motelList.jsp");
		respList.add((T) motelService.motelGangnam());
		return respList;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/motelDetail")
	public List<T> motelDetail(MotelDetailDto dto) {
		System.out.println(dto.toString());

		respList.add((T) "/motelInfo.jsp");
		respList.add((T) motelService.motelDetail(dto));
		
		return respList ;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/checklist_info")
	public List<T> checklist_info(String str1, String str2) {
		respList.add((T) motelService.checklist_info(str1, str2));		
		return respList ;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/reservation")
	public List<T> reservation(ReservationDto dto) {
		respList.add((T) "/reservation.jsp");
		respList.add((T) motelService.reservationInfo(dto));		
		return respList ;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/reservationReq")
	public List<T> reservationReq(ResReqDto dto) {
		
		motelService.reservationEnd(dto);
		
		respList.add((T) "/index.jsp");
		respList.add(null);
		return respList ;
	}
	
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/reservationList")
	public List<T> reservationList(ResListReqDto dto) {
		
		respList.add((T) "/reservationList.jsp");
		respList.add((T) motelService.reservationList(dto));
		return respList ;
	}
	
	
	@RequestMapping("/뒬리틍")
	public int reservationDeleteAjax(String typeListId) {
		return motelService.reservationDelete(typeListId);
	}
	
	
	



}