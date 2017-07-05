package web;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/web07")
public class web07 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");

		// 0. prepare 接受傳過來的字串參數
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		if (x == null)
			x = "0";
		if (y == null)
			y = "0";
		// 1. Model
		web07_Model model = new web07_Model(x, y);
		int result = model.add();
		// 2. forward -> View
		request.setAttribute("x", x);
		request.setAttribute("y", y);
		request.setAttribute("result", result);
		//在Web應用程式中，經常需要多個Servlet來完成請求，像是將另一個Servlet的回應包括進來，或將請求轉發給別的Servlet處理,利用getRequestDispatcher
		request.getRequestDispatcher("web07_view").forward(request, response);

	}

}
