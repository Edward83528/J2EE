package servlet_example;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/web04")
public class web04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public web04() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doTask(request, response, "doGet");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doTask(request, response, "doPost");
	}

	// 自己寫一個doTask方法彈性寫成,表單送來post和get都無所謂
	private void doTask(HttpServletRequest request, HttpServletResponse response, String what)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = response.getWriter();
		// 如 果想要知道請求中有多少請求參數，則可以使用getParameterNames()方法，這會傳回一個Enumeration物件，當中包
		// 括所有的請求參數名稱
		Enumeration<String> params = request.getParameterNames();
		while (params.hasMoreElements()) {
			String param = params.nextElement();
			// getParameter指定請求參數名稱來取得對應的值
			String value = request.getParameter(param);

			pw.write(param + " : " + value + "<br>");// account:你打的數值
		}

		pw.flush();
		pw.close();
	}

}
