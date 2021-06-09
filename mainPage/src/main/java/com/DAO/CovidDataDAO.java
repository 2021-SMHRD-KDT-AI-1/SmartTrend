package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.covidDataVO;

public class CovidDataDAO {

	public ArrayList<covidDataVO> covidDataList() {
		
		ArrayList<covidDataVO> list = new ArrayList<covidDataVO>();
			String dbUrl = "jdbc:oracle:thin:@146.56.169.187:1521:xe";
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("DB Driver loading");
			Connection con = DriverManager.getConnection(dbUrl,"smarttrand","smarttrand");
			String sql = "SELECT * FROM COVIDDATA";
			PreparedStatement pstmt = con.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
			while(rs.next()) { 
				covidDataVO vo = new covidDataVO(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6));	
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


