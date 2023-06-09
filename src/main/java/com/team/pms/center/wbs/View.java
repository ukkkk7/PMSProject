package com.team.pms.center.wbs;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/center/wbs/view.do")
public class View extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
      //View.java
      WbsDAO dao = new WbsDAO();
      
      List<WbsDTO> list = dao.getwbslist();
      
      System.out.println(list);
      
      
      req.setAttribute("list", list);
      
      
      
      RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/center/wbs/view.jsp");
      dispatcher.forward(req, resp);
   }

}
