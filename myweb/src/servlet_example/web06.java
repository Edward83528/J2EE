package servlet_example;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class web06
 */
@WebServlet("/web06")
public class web06 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public web06() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String gender = request.getParameter("gender");
		// 讀出checkbox多選
		String[] hobby = request.getParameterValues("hobby");
		StringBuffer sb = new StringBuffer();
		for (String h : hobby) {
			sb.append(h + " ");
		}
		response.getWriter().write(sb.toString());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
