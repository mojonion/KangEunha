package Bmember.controller;

import java.io.IOException;

import Bmember.service.MemberService;
import Bmembership.MemberDTO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/join.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	MemberService service = new MemberService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
	        throws ServletException, IOException {
	    req.getRequestDispatcher("join.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		MemberDTO dto = new MemberDTO();
		dto.setName(req.getParameter("name"));
		dto.setId(req.getParameter("id"));
		dto.setEmailId(req.getParameter("emailId"));
		dto.setEmail_address(req.getParameter("emailAddress"));
		dto.setTel(req.getParameter("tel"));
		dto.setGender(req.getParameter("gender"));
		dto.setAgree(req.getParameter("agree"));
		dto.setPassword(req.getParameter("pass"));
		int result = service.addMember(dto);
		
		if(result > 0) {
			req.setAttribute("msg", "회원가입 성공! 로그인 페이지로 이동합니다.");
			req.getRequestDispatcher("login.jsp")
			.forward(req, resp);
		}
		else {
			req.setAttribute("msg", "회원가입 실패! 다시 시도해주세요.");
			req.getRequestDispatcher("join.jsp")
			.forward(req, resp);
		}
	}
}