package gdb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/* 멤버 : 변수와 메서드(함수)
 * public : 접근제한자 , 접근제한이 없는 옵션
 *  */
public class Cdb {
 // 멤버변수
 // 2.오라클과 연결
 /* Connection : 오라클서버과 코딩을 연결 
 PreparedStatement : sql관리
 */
 Connection con = null;  

 // 메서드
 
 // DB접속
 public void connect() {
   // 오라클서버 주소
   String oUrl = "jdbc:oracle:thin:@localhost:1521:orcl";
   // 데이터베이스 로그인 정보
   String dId = "c##scott";
   String dPwd = "Tiger07";
   // 접속 모듈 : ojdbc
   try {
  Class.forName("oracle.jdbc.driver.OracleDriver"); 
    con = DriverManager.getConnection(oUrl, dId, dPwd);
  
   // 연결 여부 확인
   if(con != null) {
	   System.out.printf("Connection 예외: %s", "연결성공!");
   } else {
		   System.out.printf("Connection 예외: %s", "연결실패!"); }	  
   } catch (Exception e) {
   System.out.printf("Connection 예외: %s", e.getMessage());
  }

 }
 
 // 2. rtnResultSet : 쿼리를 전달받아 ResultSet
 // ResultSet : 자바코드에서 오라클 서버에 데이터를 요청, set으로 만들어서 주는 것  (set을 상속받는 것)
 // void (리턴값이 없음) 
 public ResultSet rtnResultSet(String pSql) {
	  /* sql의 결과값을 가져올 컬렉션 */
	  ResultSet rs = null;
	  // 오라클연결
	  connect();
	  
	    // db접속 / 쿼리 실행
	    PreparedStatement ps;
	  try {
	   ps = con.prepareStatement(pSql);
	   rs = ps.executeQuery(); 
	  } catch (SQLException e) {
	   // TODO Auto-generated catch block
	   e.printStackTrace();
	  }
	    // 쿼리실행
	  return rs;
	 }
	 
	          
 // 1. DML() 실행하는 거
 // psql로 sql을 밖에서 만들어 가져올 것 
 public void doDML(String pSql) {
  // 3.db연결과 sql실행
	 connect();
   try{ // 예외 날 확률이 많은 코드들

    // 오라클에접속
	   //db접속 / 쿼리 실행
	   //statement :sql 
   Statement st = con.createStatement();
   //쿼리 실행
     st.executeUpdate(pSql); // dml실행전용메서드 (insert, delete, update)
   
   } catch(Exception e){ // try에서 예외발생시 호출되는 함수
    System.out.printf("예외메세지 : %s \n", e.getMessage() );
   } finally { // 무조건 실행되는 블록
    if(con != null) try { con.close();} catch(SQLException sq){};
   }
   
 }
 

}
