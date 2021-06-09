package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class testjdbc {
		// 참조 사이트 : https://recollectionis.tistory.com/162
	public static void main(String[] args) {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@211.223.136.24:1521:xe";
		try {
		// 1.데이터베이스 드라이버 로딩
			Class.forName(driver);
			System.out.println("DB Driver loading");
		// 2. 데이터베이스 서버와 연결
			Connection con = DriverManager.getConnection(dbUrl,"hr","hr");
			System.out.println("DB Connection:" + con);
		// 3. SQL을 실행하기 위한 PreparedStatement
			String sql = "SELECT DAY,ZONE,CONFIRMED_PATIENT,FOREIGN_IMPORT,IN_QUARANTINE,RELEASE_FROM_QUARANTINE FROM COVIDDATA";
			PreparedStatement pstmt = con.prepareStatement(sql);
		// 4. select SQL을 실행하여 변환된 결과 ResultSet을 이용해
		// 조화된 정보를 확인한다.
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { // next() : 결과행이 존재할때 true, 커서 이동
				System.out.println(
						rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6));
			}
			rs.close();
			pstmt.close();
			con.close();
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
