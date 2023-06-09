package com.team.pms.employee.repository;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class RegisterDTO {
	private String id;
	private String pw;
	private String employeeseq;
	private String lv;
}
