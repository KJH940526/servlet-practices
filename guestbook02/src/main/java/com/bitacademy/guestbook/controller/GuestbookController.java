package com.bitacademy.guestbook.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.guestbook.dao.GuestbookDao;
import com.bitacademy.guestbook.vo.GuestbookVo;

public class GuestbookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String actionName = request.getParameter("a");

		System.out.println("action>>"+actionName);
		if ("add".equals(actionName)) {
			String name = request.getParameter("name"); // 이름은 똑같게 하기
			String password = request.getParameter("password");
			String message = request.getParameter("message");

			GuestbookVo vo = new GuestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);

			new GuestbookDao().insert(vo);
			response.sendRedirect(request.getContextPath() + "/gb");

		} else if ("delete".equals(actionName)) {
			
			String no = (String)request.getAttribute("no");
			String password = request.getParameter("password");
			GuestbookVo vo = new GuestbookVo();
			vo.setNo(Long.parseLong(no));
			vo.setPassword(password);
			new GuestbookDao().delete(vo);
			response.sendRedirect(request.getContextPath() + "/gb");
			

		} else if ("deleteform".equals(actionName)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/deleteform.jsp");
			rd.forward(request, response);
			
				
		} else {
			
			List<GuestbookVo> list = new GuestbookDao().findAll(); // 컨트롤하고 이제 뷰로 넘겨야함!
			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			
			rd.forward(request, response);
			
		}
		response.setContentType("text/html; charset=utf-8");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
