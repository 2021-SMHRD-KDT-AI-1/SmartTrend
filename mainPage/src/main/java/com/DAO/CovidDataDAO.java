package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.covidDataVO;



import java.sql.DriverManager;










public class CovidDataDAO {
	//public static void main(String[] args) {

	public ArrayList<covidDataVO> address() {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@146.56.169.187:1521:xe";
		ArrayList<covidDataVO> list = new ArrayList<covidDataVO>();
					
		try {
			Class.forName(driver);
			//System.out.println("DB Driver loading");
			Connection con = DriverManager.getConnection(dbUrl,"smarttrand","smarttrand");
			//System.out.println("DB Connection:" + con);
			String sql = "select * from COVIDDATA";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) { 

				covidDataVO vo = new covidDataVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5),rs.getString(6));
				list.add(vo);
				
				
				


				
			}
			//System.out.println(list.size());
			//System.out.println(list.get(118).getZone());
			
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


