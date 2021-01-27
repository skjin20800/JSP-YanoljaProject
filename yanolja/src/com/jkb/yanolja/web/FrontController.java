package com.jkb.yanolja.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;

import com.jkb.yanolja.anno.RequestMapping;
import com.jkb.yanolja.domain.motel.dto.MotelDetailDto;
import com.jkb.yanolja.domain.user.dto.JoinReqDto;
import com.jkb.yanolja.domain.user.dto.LoginReqDto;
import com.jkb.yanolja.service.MotelService;
import com.jkb.yanolja.service.UserService;

@WebServlet("/user")
public class FrontController {
	
UserService userService = new UserService();
MotelService motelService = new MotelService();
List<Object> respList = new ArrayList<>();
	
    public FrontController() {
        super();
    }
    
	@RequestMapping("/index")
	public List<Object> index() {
		respList.add("/index.jsp");
		respList.add(null);
		return respList;
	}
    

	@RequestMapping("/join")
	public List<Object> join() {
		respList.add("/userjoin.jsp");
		respList.add(null);
		return respList;
	}
	
	@RequestMapping("/joinReq")
	public List<Object> join(JoinReqDto dto) {
		respList.add("/index.jsp");
		respList.add(userService.회원가입(dto));
		return respList;
	}
	
	@RequestMapping("/login")
	public List<Object> login() {
		respList.add("/userlogin.jsp");
		respList.add(null);
		return respList;
	}
	
	@RequestMapping("/loginReq")
	public List<Object> loginReq(LoginReqDto dto) {	
		respList.add("/index.jsp");
		respList.add(userService.로그인(dto));
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
	public List<Object> motelArea() {	
		respList.add("/motelArea.jsp");
		respList.add(null);
		return respList;
	}
	
	@RequestMapping("/motelList_Seomyeon")
	public List<Object> motelList_Seomyeon() {	
		respList.add("/motelList.jsp");
		respList.add(motelService.motelSeomyeon());
		return respList;
	}
	
	@RequestMapping("/motelList_Gangnam")
	public List<Object> motelList_Gangnam() {	
		respList.add("/motelList.jsp");
		respList.add(motelService.motelGangnam());
		return respList;
	}
	
	@RequestMapping("/motelDetail")
	public List<Object> motasdf(MotelDetailDto dto) {
		System.out.println("실행됨니당 모텔디테일");
		System.out.println(dto.toString());
		respList.add("/motelInfo.jsp");
		respList.add(motelService.motelGangnam());
		return respList ;
	}
	
	
	
	
	



}