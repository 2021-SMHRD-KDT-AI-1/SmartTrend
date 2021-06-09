package jdbcTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.VO.positiveVO;

public class address {
	
	public static void main(String[] args) {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@146.56.169.187:1521/xe";
		try {
		// 1.�����ͺ��̽� ����̹� �ε�
			Class.forName(driver);
			System.out.println("DB Driver loading");
		// 2. �����ͺ��̽� ������ ����
			Connection con = DriverManager.getConnection(dbUrl,"smarttrand","smarttrand");
			System.out.println("DB Connection:" + con);
		// 3. SQL�� �����ϱ� ���� PreparedStatement
			String sql = "select * from POSITIVEATTRACTIONLIST";
			PreparedStatement pstmt = con.prepareStatement(sql);
		// 4. select SQL�� �����Ͽ� ��ȯ�� ��� ResultSet�� �̿���
		// ��ȭ�� ������ Ȯ���Ѵ�.
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { // next() : ������� �����Ҷ� true, Ŀ�� �̵�
						//rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4) );
						
						String name = rs.getString(1);
						String address = rs.getString(2);// pw
						String tel = rs.getString(3);
						String count = rs.getString(4);
				
				vo = new positiveVO(name,address,tel,count);
				
				
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
