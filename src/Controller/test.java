package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public test() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String aa = request.getParameter("txta");
		String bb = request.getParameter("txtb");
		if (aa != null || bb != null) {

			double a = Double.parseDouble(aa);
			double b = Double.parseDouble(bb);
			double kq = 0;
			if (request.getParameter("butc") != null) {
				kq = a + b;
			} else if (request.getParameter("butt") != null) {
				kq = a - b;
			} else if (request.getParameter("butn") != null) {
				kq = a * b;
			} else if (request.getParameter("butchia") != null) {
				kq = a / b;
			}
//			response.sendRedirect("maytinh.jsp?kq="+kq);
//			out.print("<html><body><b>"+kq+"</b></body></html>");
			request.setAttribute("bkq", kq);
		}
		RequestDispatcher rd = request.getRequestDispatcher("maytinh.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
