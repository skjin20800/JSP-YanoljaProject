package com.jkb.yanolja.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class Script {

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
