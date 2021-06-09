package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class testjdbc {
		// ���� ����Ʈ : https://recollectionis.tistory.com/162
	public static void main(String[] args) {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@211.223.136.24:1521:xe";
		try {
		// 1.�����ͺ��̽� ����̹� �ε�
			Class.forName(driver);
			System.out.println("DB Driver loading");
		// 2. �����ͺ��̽� ������ ����
			Connection con = DriverManager.getConnection(dbUrl,"hr","hr");
			System.out.println("DB Connection:" + con);
		// 3. SQL�� �����ϱ� ���� PreparedStatement
			String sql = "SELECT DAY,ZONE,CONFIRMED_PATIENT,FOREIGN_IMPORT,IN_QUARANTINE,RELEASE_FROM_QUARANTINE FROM COVIDDATA";
			PreparedStatement pstmt = con.prepareStatement(sql);
		// 4. select SQL�� �����Ͽ� ��ȯ�� ��� ResultSet�� �̿���
		// ��ȭ�� ������ Ȯ���Ѵ�.
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { // next() : ������� �����Ҷ� true, Ŀ�� �̵�
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
