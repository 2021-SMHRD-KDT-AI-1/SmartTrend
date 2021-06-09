package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.positiveVO;

public class positiveHotelListDAO {
	
	public ArrayList<positiveVO> positiveHotelList() {
		ArrayList<positiveVO> list = new ArrayList<positiveVO>();
		
		String dbUrl = "jdbc:oracle:thin:@146.56.169.187:1521:xe";
		
		try {
		// 1.데이터베이스 드라이버 로딩
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("DB Driver loading");
		// 2. 데이터베이스 서버와 연결
			Connection con = DriverManager.getConnection(dbUrl,"smarttrand","smarttrand");
			System.out.println("DB Connection:" + con);
		// 3. SQL을 실행하기 위한 PreparedStatement
			String sql = "SELECT * FROM POSITIVEHOTELLIST";
			PreparedStatement pstmt = con.prepareStatement(sql);
		// 4. select SQL을 실행하여 변환된 결과 ResultSet을 이용해
		// 조화된 정보를 확인한다.
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { // next() : 결과행이 존재할때 true, 커서 이동
				positiveVO vo = new positiveVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4));
				list.add(vo);
			}
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
}
