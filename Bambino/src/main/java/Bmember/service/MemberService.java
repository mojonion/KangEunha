package Bmember.service;

import Bmembership.MemberDAO;
import Bmembership.MemberDTO;

public class MemberService {
	public MemberDTO getMember(String userId, String userPwd) {
		MemberDAO dao = new MemberDAO();
		MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
		dao.close();
		return memberDTO;
	}
	public int addMember(MemberDTO dto) {
		int result = 0;
		MemberDAO dao = new MemberDAO();
		result = dao.addB_Member(dto);
		dao.close();
		return result;
	}
}
