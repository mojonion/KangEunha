package Bmembership;

import java.sql.SQLException;

import common.DBConnPool;

public class MemberDAO extends DBConnPool {
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "SELECT * FROM b_member "
					+ " WHERE id=? AND password=?";
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			if(rs.next()) {
				dto.setName(rs.getString("name"));
				dto.setPassword(rs.getString("password"));
				dto.setId(rs.getString("id"));
				dto.setEmailId(rs.getString("email_id"));
				dto.setEmail_address(rs.getString("email_address"));
				dto.setTel(rs.getString("tel"));
				dto.setGender(rs.getString("gender"));
				dto.setAgree(rs.getString("agree"));
				dto.setRegidate(rs.getDate("regidate"));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	public int addB_Member(MemberDTO dto) {
		int inResult = 0;
		String sql = "INSERT INTO b_member(name, id, password, email_id, email_address, tel, gender, agree, regidate) "
					+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, dto.getName());	// 첫 번째 ?의 값 설정
			psmt.setString(2, dto.getId()); // 두 번째 ?의 값 설정
			psmt.setString(3, dto.getPassword()); // 세 번째 ?의 값 설정
			psmt.setString(4, dto.getEmailId());
			psmt.setString(5, dto.getEmail_address());
			psmt.setString(6, dto.getTel());
			psmt.setString(7, dto.getGender());
			psmt.setString(8, dto.getAgree());
		//	executeUpdate() : INSERT, UPDATE, DELETE 문을 실행하는 메서드
			inResult = psmt.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
			
		}
		return inResult;
	}
}
