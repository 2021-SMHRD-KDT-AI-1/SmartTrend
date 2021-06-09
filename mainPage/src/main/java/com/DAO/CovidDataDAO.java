package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CovidDataDAO {

	public static void main(String[] args) {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@211.223.136.24:1521:xe";
		try {
			Class.forName(driver);
			//System.out.println("DB Driver loading");
			Connection con = DriverManager.getConnection(dbUrl,"hr","hr");
			//System.out.println("DB Connection:" + con);
			String sql = "SELECT day,zone,confirmedPatient,foreignImport,inQuarantine,releaseFromQuarantine FROM COVIDDATA";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
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

