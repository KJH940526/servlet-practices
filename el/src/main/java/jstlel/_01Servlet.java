package jstlel;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class _01Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 값
		int iVal = 10;
		long lVal = 10L;
		float fVal= 1.4f;
		boolean bVal = true;
		String sVal = "가나다라마바사";
		
		
		// 객체 테스트
		Object obj = null;
		UserVo vo = new UserVo();
		vo.setNo(10L);
		vo.setName("김준호");
		
		//Map을 사용하여 여러 값 한 번에 넘기기
		Map<String, Object> map = new HashMap<>();
		map.put("iVal", iVal);
		map.put("lVal", lVal);
		map.put("fVal", fVal);
		map.put("bVal", bVal);
		
		
		request.setAttribute("iVal", iVal);
		request.setAttribute("lVal", lVal);
		request.setAttribute("fVal", fVal);
		request.setAttribute("bVal", bVal);
		request.setAttribute("sVal", sVal);
		
		request.setAttribute("obj", obj);
									//내부적으로 getter가 호출된다!
		request.setAttribute("vo", vo);
		
		request.setAttribute("map", map);
		
		
		request.getRequestDispatcher("/WEB-INF/views/01.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
