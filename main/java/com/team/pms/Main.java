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

import com.team.pms.center.wbs.WbsDAO;
import com.team.pms.center.wbs.WbsDTO;
import com.team.pms.employee.repository.EmployeeDAO;
import com.team.pms.employee.repository.EmployeeDTO;
import com.team.pms.issue.IssueDAO;
import com.team.pms.issue.IssueDTO;

@WebServlet("/main.do")
public class Main extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//Main.java
		HttpSession session = req.getSession();

		//본인 차트
		String employeeSeq = (String) session.getAttribute("employeeSeq");
		
		WbsDAO daoChart = new WbsDAO();
		
		List<WbsDTO> list = daoChart.getwbslistMy(employeeSeq);
		req.setAttribute("list", list);
		
		//좌측 상단 이름 부서 직급
		EmployeeDAO dao = new EmployeeDAO();
		EmployeeDTO dto = dao.myInfo(employeeSeq);
		
		req.setAttribute("name", dto.getName());
		req.setAttribute("position", dto.getPosition());
		req.setAttribute("teamname", dto.getTeamName());
		
		
		//main 내작업
		IssueDAO daoMy = new IssueDAO();
		
		String listMy = daoMy.getIssue(employeeSeq); 
		
		req.setAttribute("listMy", listMy);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/main.jsp");

		dispatcher.forward(req, resp);
	}
}
