package com.jkb.yanolja.filter;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Parameter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jkb.yanolja.anno.RequestMapping;
import com.jkb.yanolja.web.FrontController;

public class Dispatcher implements Filter {


	@Override
	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse response = (HttpServletResponse) resp;
		
		//엔드포인트
		String endPoint = request.getRequestURI().replaceAll(request.getContextPath(), "");
		
		
		//확장자 추출
		int pos = endPoint.lastIndexOf( "." );
		String ext = endPoint.substring( pos + 1 );
		System.out.println("엔드포인트" + endPoint);
		
			if(ext.equals("css")||ext.equals("png")||ext.equals("js")) {
				chain.doFilter(request, response);
			}
					
		if(endPoint.equals("/index.jsp")) {
			RequestDispatcher dis = request.getRequestDispatcher("/index.jsp"); // 필터를 다시 안탐!!
			dis.forward(request, response);	
		}
			
		FrontController userController = new FrontController();
		
		List<Object> path = new ArrayList<>();
		Method[] methods = userController.getClass().getDeclaredMethods(); // 그 파일에 메서드만!!


		
		if(endPoint.equals("/usernameCheck")){
			BufferedReader br = request.getReader(); //아이디 중복체크
			String usernameCheck = br.readLine(); //아이디 중복체크
			System.out.println("버퍼값"+usernameCheck);
			if(usernameCheck != null) {
				int usernameResult = userController.usernameCheck(usernameCheck);
				PrintWriter out = response.getWriter();
				if(usernameResult == 1) {
					out.print("ok");
				}else {
					out.print("fail");
				}
				out.flush();
				return ;
			}	
		}else if(endPoint.equals("/logout")) {
			HttpSession session = request.getSession();
			session.invalidate();
			response.sendRedirect("index.jsp");
			return;
		}
		
		
		for (Method method : methods) {
			Annotation annotation = method.getDeclaredAnnotation(RequestMapping.class);
			RequestMapping requestMapping = (RequestMapping) annotation;
			
			if (requestMapping.value().equals(endPoint)) {
				try {
					Parameter[] params = method.getParameters(); // LoginDto
//					String path = null;
					if (params.length != 0) {
						// 해당 dtoInstance를 리플렉션해서 set함수 호출(username, password)
						Object dtoInstance = params[0].getType().newInstance();
						setData(dtoInstance, request); // request에서 적용할 setter값을 전부 dtoInstance에 넣어 DTO로 전달한다.
						path = (List<Object>) method.invoke(userController, dtoInstance);				
					} else {
						path = (List<Object>)  method.invoke(userController);
					}
					if(requestMapping.value().equals("/loginReq")) {
						HttpSession session = request.getSession();
						session.setAttribute("session", path.get(1)); // 인증주체		
						response.sendRedirect("index.jsp");
						break;
					}
					request.setAttribute("data", path.get(1));
					RequestDispatcher dis = request.getRequestDispatcher(path.get(0).toString()); // 필터를 다시 안탐!!
					dis.forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
				break;
			}
		}
	}

	private <T> void setData(T dtoInstance, HttpServletRequest request) {
		Enumeration<String> keys = request.getParameterNames(); // 크기 : 2 (username, password)
		while (keys.hasMoreElements()) { // 2번 돈다 //다음번 주소가 있는지 체크.
			String key = (String) keys.nextElement(); //keys의 값을 key에담고 다음 keys값을 앞으로 땡겨놓는다
			String methodKey = keyToMethodKey(key); // setUsername

			Method[] methods = dtoInstance.getClass().getDeclaredMethods(); // 5개

			for (Method method : methods) {
				if (method.getName().equals(methodKey)) {
					try {
						method.invoke(dtoInstance, request.getParameter(key)); // String
					} catch (Exception e) {
						try {
							int value = Integer.parseInt(request.getParameter(key));
							method.invoke(dtoInstance, value);
						} catch (Exception e2) {
							e2.printStackTrace();
						}
					}
				}
			}
		}
	}

	private String keyToMethodKey(String key) {
		String firstKey = "set";
		String upperKey = key.substring(0, 1).toUpperCase();
		String remainKey = key.substring(1);
		return firstKey + upperKey + remainKey;
	}

}

