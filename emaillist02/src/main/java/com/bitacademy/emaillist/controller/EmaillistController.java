package com.bitacademy.emaillist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bitacademy.emaillist.dao.EmaillistDao;
import com.bitacademy.emaillist.vo.EmaillistVo;

//처음에 에러 있는 이유는 httpservlet 클래스는 톰캣에서 구동되는데 런타임이 톰캣이 아니여서 
public class EmaillistController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // url 맵핑은 여러개 할 수는 있다!

		String acctionName = request.getParameter("a"); // 여기서는 url을 a를 기준으로 나누겠다!
		if ("form".equals(acctionName)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response);
			
		} else if ("add".equals(acctionName)) {
			request.setCharacterEncoding("utf-8");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String email = request.getParameter("email");
			
			EmaillistVo vo = new EmaillistVo();
			vo.setFirstName(firstName);
			vo.setLastName(lastName);
			vo.setEmail(email);
			
			new EmaillistDao().insert(vo);
			response.sendRedirect(request.getContextPath()+ "/el");
			
		} else { // form이랑 add를 말고 이상한 url를 치면 else를 통해서 처리해줌! list 출력
			List<EmaillistVo> list = new EmaillistDao().findAll(); //컨트롤하고 이제 뷰로 넘겨야함!
			
					//"list"는 jsp의 name이랑 같아야함!! 
			request.setAttribute("list", list);
											//WEB_INF는 클라이언트예는 접근이 불가능하지만 서버에서는 접근가능
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");   //순서2
			rd.forward(request, response); //순서3
		}

		response.setContentType("text/html; charset=utf-8");

		PrintWriter pw = response.getWriter();
		pw.println("<h1>Emaillist</h1>");
	}
	
	// 01. Client -req> JSP -res> Client
	// 02. Client -req> Servlet -req> JSP -> res -> Client (request 연장)

	// 순서
	// 1) request 연장 : 서블릿을 통해서 데이터를 request에 넣고 데이터가 들어가 있는 request객체는 jsp에 사용딘다.(request 연장)
	// 2) request Dispatch :  들어온 모든 request를 Dispatcher를 통해서 각각의 요청으로 분기시킨다!
	// 3) forward(페이지 이동기술) : Servlet 프로그래밍에서 MVC를 꾸현하기 위함 cf) redirect 비교 ㄴㄴ
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
