package com.team.pms.center.wbs;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.test.my.DBUtil;

public class WbsDAO {
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;


	public WbsDAO() {
		conn =  DBUtil.open("localhost","ikc1013","java1234");
	}


	public List<WbsDTO> getwbslist() {

		
		try {

			String sql = "select p.projectseq , p.name as pname, p.startdate as pstartdate, p.enddate as penddate,\r\n"
					+ "w.wbsname as wname, w.wbsseq as wseq, w.startdate as wstartdate, w.enddate as wenddate \r\n"
					+ "from project p\r\n"
					+ "inner join wbs w\r\n"
					+ "on p.projectseq = w.projectseq where p.projectseq = 1";
				
			stat = conn.createStatement();
			rs = stat.executeQuery(sql);

			List<WbsDTO> list = new ArrayList<WbsDTO>();

			while (rs.next()) {

				WbsDTO dto = new WbsDTO();
				dto.setProjectseq(rs.getString("projectseq"));
				dto.setPname(rs.getString("pname"));
				dto.setPenddate(rs.getDate("penddate"));
				dto.setPstartdate(rs.getDate("pstartdate"));
				dto.setWname(rs.getString("wname"));
				dto.setWseq(rs.getString("wseq"));
				dto.setWenddate(rs.getDate("wenddate"));
				dto.setWstartdate(rs.getDate("wstartdate"));
				
				

				
				list.add(dto);
			}

			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
	}


	


	public List<WbsDTO> getwbslistMy(String employeeSeq) {
		try {

			String sql = "select p.projectseq , p.name as pname, p.startdate as pstartdate, p.enddate as penddate,\r\n"
					+ "w.wbsname as wname, w.wbsseq as wseq, w.startdate as wstartdate, w.enddate as wenddate \r\n"
					+ "from project p\r\n"
					+ "inner join wbs w\r\n"
					+ "on p.projectseq = w.projectseq inner join employee e on e.employeeseq = w.employeeseq where e.employeeseq = ?";
				
			
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, employeeSeq);
			
			rs = pstat.executeQuery();

			List<WbsDTO> list = new ArrayList<WbsDTO>();

			while (rs.next()) {

				WbsDTO dto = new WbsDTO();
				dto.setProjectseq(rs.getString("projectseq"));
				dto.setPname(rs.getString("pname"));
				dto.setPenddate(rs.getDate("penddate"));
				dto.setPstartdate(rs.getDate("pstartdate"));
				dto.setWname(rs.getString("wname"));
				dto.setWseq(rs.getString("wseq"));
				dto.setWenddate(rs.getDate("wenddate"));
				dto.setWstartdate(rs.getDate("wstartdate"));
				
				

				
				list.add(dto);
			}

			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return null;
	}


	
	
	
	
	
	
}
	

