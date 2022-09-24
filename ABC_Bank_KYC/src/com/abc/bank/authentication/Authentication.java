package com.abc.bank.authentication;

import java.io.IOException;
import javax.servlet.ServletException;
import java.sql.SQLException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

//import java.sql.Connection;

import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletConfig;

import com.abc.bank.dao.AgentDaoImpl;


/**
 * Servlet implementation class Authentication
 */
@WebServlet("/login")
public class Authentication extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authentication() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*Connection con = null;

	@Override
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub

		super.init(config);
		
	}*/

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	/*protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
*/
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("in SERVLETTTTT");
		String userName = request.getParameter("username");
		String passWord = request.getParameter("password");
		
		AgentDaoImpl agentDao = new AgentDaoImpl();
		
		try{
			Agent agent = AgentDaoImpl.checkLogin(userName, passWord);
			String destPage = "login.jsp";	
		 
		if (agent != null) {
		    HttpSession session = request.getSession();
		    session.setAttribute("agent", agent);
		    destPage = "Home.jsp";
		} else {
		    String message = "Invalid Username/password";
		    request.setAttribute("message", message);
		}
		 
		RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		dispatcher.forward(request, response);
		
	}catch (SQLException | ClassNotFoundException ex) {
        throw new ServletException(ex);
	}
  }
}
