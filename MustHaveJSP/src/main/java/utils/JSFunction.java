package utils;

import java.io.PrintWriter;

import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.jsp.JspWriter;

public class JSFunction {
//	static 메서드이기 때문에 선언하지 않아도 사용할 수 있다
	public static void alertLocation(String msg, String url, JspWriter out) {
		try {
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"	// 메세지 창에 msg 출력하는 기능
					+ "	location.href='" + url +"';"	// a태그처럼 url로 이동 기능
					+ "</script>";
//			JSFunction 클래스에서 out.을 사용할 수 있도록 하는 기능
			out.println(script);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void alertLocation(String msg, String url, PrintWriter out) {
		try {
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"	// 메세지 창에 msg 출력하는 기능
					+ "	location.href='" + url +"';"	// a태그처럼 url로 이동 기능
					+ "</script>";
//			JSFunction 클래스에서 out.을 사용할 수 있도록 하는 기능
			out.println(script);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"	// 메세지 출력
					+ "	history.back();"	// 뒤로가기 실행
					+ "</script>";	
			out.println(script);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void alertBack(String msg, PrintWriter out) {
		try {
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"	// 메세지 출력
					+ "	history.back();"	// 뒤로가기 실행
					+ "</script>";	
			out.println(script);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static void alertLocation(HttpServletResponse resp, String msg, String url) {
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = ""
							+ "<script>"
							+ "		alert('" + msg + "');"
							+ "		location.href='" + url + "';"
							+ "</script>";
			writer.print(script);
		}
		catch(Exception e) {}
	}
	public static void alertBack(HttpServletResponse resp, String msg) {
		try {
			resp.setContentType("text/html;charset=UTF-8");
			PrintWriter writer = resp.getWriter();
			String script = ""
					+ "<script>"
					+ "	alert('" + msg + "');"	// 메세지 출력
					+ "	history.back();"	// 뒤로가기 실행
					+ "</script>";	
			writer.print(script);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
