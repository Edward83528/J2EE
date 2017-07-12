package servlet_example;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//一個Servlet基本上必須繼承javax.servlet.http.HttpServlet
//透過標注（Annotation）@WebServlet來告知容器要由哪個Servlet來處理請求
@WebServlet("/web01")
public class web01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public web01() {
		super();

	}

	// 要處理的是GET請求，則重新定義doGet()方法
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 對客戶端有任何純文字的回應用getWriter()取得PrintWriter輸出
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Hello! World!</h1>");
		out.println("</body>");
		out.println("</html>");
		out.close();
	}

	// 要處理的是Post請求，則重新定義doPost()方法
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
