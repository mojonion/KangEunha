package common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnPool {
	public Connection con;	// 데이터베이스 연결을 위한 클래스
	//	SQL 작성시 사용하는 클래스
	public Statement stmt;	// 한 번만 SQL 실행 가능
	public PreparedStatement psmt;	// 여러 번 SQL 실행 가능
	public ResultSet rs;	// SELECT문의 결과를 담는 클래스
	
	public DBConnPool() {
		try {
			//	JNDI를 사용하기 위해 Context 클래스 생성
			Context initCtx = new InitialContext();
			//	현재 프로젝트의 루트 디렉토리 설정
			Context ctx = (Context)initCtx.lookup("java:comp/env");
			//	dbcp_oracle이라는 이름의 resource를 저장
			//	server.xml에 작성한 Datasource를 저장하는 코드
			DataSource source = (DataSource)ctx.lookup("dbcp_myoracle");
			//	커넥션 풀에 있는 연결 한 개를 저장
			con = source.getConnection();
			System.out.println("DB 커넥션 풀 연결 성공");
		}catch(Exception e) {
			System.out.println("DB 커넥션 풀 연결 실패");
			e.printStackTrace();
		}
	}
	
	public void close() {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (psmt != null) psmt.close();
			if (con != null) con.close();
			
			System.out.println("JDBC 자원 해제");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
