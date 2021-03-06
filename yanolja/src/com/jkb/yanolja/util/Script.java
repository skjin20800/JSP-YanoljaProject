package com.jkb.yanolja.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Script {
	
	
	public static void back(HttpServletResponse response, String msg) {
		PrintWriter out;
		try {
			out = response.getWriter();
			out.println("<script>");
			out.println("alert('" + msg + "');");
			out.println("history.back();"); //이전에 저장된 페이지로 돌아간다(뒤로가기)
			out.println("</script>");
			out.flush(); // 버퍼 비우기
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public static void responseData(HttpServletResponse response, String jsonData) {

		PrintWriter out;
		try {
			response.setContentType("text/html; charset=utf-8");
			out = response.getWriter();
			out.print(jsonData);
			out.flush(); // 버퍼 비우기
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
