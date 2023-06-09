package com.team.pms.center.wbs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.team.pms.todo.team.ProgressDAO;
import com.team.pms.todo.team.ProgressDTO;



@WebServlet("/center/wbs/view.do")
public class View extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		
		String employeeSeq = (String) session.getAttribute("employeeSeq");
		//String projectSeq = (String) session.getAttribute("projectSeq");
		
		//View.java
		
		
		ProgressDAO dao1 = new ProgressDAO();
		
		List<ProgressDTO> list1 = dao1.selectWbs(employeeSeq);
		
		for(ProgressDTO dto : list1) {
			
			System.out.println(dto.getName());
		}
		
		
		//
		WbsDAO dao = new WbsDAO();
		List<WbsDTO> list = dao.getwbslist();
		
		System.out.println(list);
		
		
		req.setAttribute("list", list);
		
		
//		String listData = req.getParameter("list");
//		resp.setContentType("application/json");
//		resp.setCharacterEncoding("UTF-8");
//		resp.getWriter().write(listData);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/wbs/view.jsp");
		dispatcher.forward(req, resp);
	}

}

