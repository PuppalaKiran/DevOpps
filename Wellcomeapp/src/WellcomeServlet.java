
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.net.httpserver.HttpServer;

/**
 * Servlet implementation class WellcomeServlet
 */
public class WellcomeServlet extends HttpServer {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WellcomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContenttype("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1>Wellcome to java</h1>");
		out.println("<h1>The Server Date and Time is: "+new Date()+"</h1>");
	}
	public void destroy()
	{
		System.out.println("Destroying Object");
	}
	
	}


