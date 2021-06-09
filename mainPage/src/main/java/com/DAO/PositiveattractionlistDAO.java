package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.positiveVO;

import java.sql.DriverManager;



public class PositiveattractionlistDAO {
	public ArrayList<positiveVO> address() {
		String driver = "oracle.jdbc.OracleDriver";
		String dbUrl = "jdbc:oracle:thin:@146.56.169.187:1521:xe";
		ArrayList<positiveVO> list = new ArrayList<positiveVO>();
					
		try {
			Class.forName(driver);
			//System.out.println("DB Driver loading");
			Connection con = DriverManager.getConnection(dbUrl,"smarttrand","smarttrand");
			//System.out.println("DB Connection:" + con);
			String sql = "select * from POSITIVEATTRACTIONLIST";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) { 
				positiveVO vo = new positiveVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4));
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

