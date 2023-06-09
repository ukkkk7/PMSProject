package com.team.pms;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.pms.employee.repository.EmployeeDAO;
import com.team.pms.employee.repository.EmployeeDTO;
import com.team.pms.sign.repository.SignListDAO;
import com.team.pms.sign.repository.SignListDTO;

@WebServlet("/main.do")
public class Main extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Main.java
		HttpSession session = req.getSession();

		String employeeSeq = (String) session.getAttribute("employeeSeq");
		
		EmployeeDAO dao = new EmployeeDAO();
		EmployeeDTO dto = dao.myInfo(employeeSeq);
		
		req.setAttribute("name", dto.getName());
		req.setAttribute("position", dto.getPosition());
		req.setAttribute("teamname", dto.getTeamName());
		
		//새로 넣음
		SignListDAO daos = new SignListDAO();
		String signwait = daos.signwait();
		
		System.out.println(signwait);
		
		req.setAttribute("signwait", signwait);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main.jsp");

		dispatcher.forward(req, resp);
	}
}
