package com.team.pms.todo.schedule;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/todo/schedule/calendarview.do")
public class CalendarView extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//CalendarView.java

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/todo/schedule/calendarview.jsp");

		dispatcher.forward(req, resp);
	}
}
