package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/web03")
public class web03 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public web03() {
		super();
		System.out.println("web03()");// 最先出現,而且就算重新整理只出現一次

	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 以下重新整理就會出現一次
		System.out.println("service");// 第2個出現
		doGet(request, response);// 第3個出現
		doPost(request, response);// 第4個出現
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
