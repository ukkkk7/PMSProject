package com.team.pms.employee.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.test.my.DBUtil;

public class RegisterDAO {
	Connection conn;
	Statement stat;
	PreparedStatement pstat;
	ResultSet rs;

	public RegisterDAO() {
		conn = DBUtil.open("192.168.10.62", "team", "java1234");
	}

	public String login(RegisterDTO dto) {

		try {
			String sql = "SELECT * FROM Register where id = ? and pw = ?";

			pstat = conn.prepareStatement(sql);
			pstat.setString(1, dto.getId());
			pstat.setString(2, dto.getPw());

			rs = pstat.executeQuery();

			if (rs.next()) {
				return rs.getString("employeeSeq");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}
}
