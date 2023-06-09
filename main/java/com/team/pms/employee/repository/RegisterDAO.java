package com.team.pms.employee.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.team.pms.issue.IssueDTO;
import com.test.my.DBUtil;

public class RegisterDAO {
	Connection conn;
	Statement stat;
	PreparedStatement pstat;
	ResultSet rs;

	public RegisterDAO() {
		conn = DBUtil.open("localhost","ikc1013","java1234");
	}

	public List<RegisterDTO> login(RegisterDTO dto) {

		try {

			String sql = "SELECT *\r\n"
					+ "FROM employee e\r\n"
					+ "INNER JOIN register r ON e.employeeseq = r.employeeseq\r\n"
					+ "inner join wbs w\r\n"
					+ "on e.employeeseq = w.employeeseq\r\n"
					+ "inner join project p\r\n"
					+ "on w.projectseq = p.projectseq\r\n"
					+ "WHERE id = ? AND pw = ?";

			pstat = conn.prepareStatement(sql);

			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());

			rs = pstat.executeQuery();

			List<RegisterDTO> list = new ArrayList<RegisterDTO>();

			while (rs.next()) {

				RegisterDTO dtot = new RegisterDTO();
				dtot.setId(rs.getString("id"));
				dtot.setPw(rs.getString("pw"));
				dtot.setLv(rs.getString("lv"));
				dtot.setEmployeeSeq(rs.getString("employeeseq"));
				dtot.setProjectseq(rs.getString("projectseq"));

				list.add(dtot);
			}

			return list;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	

	
	
}
