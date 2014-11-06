package mySite;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.*;

import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class login_servlet
 */
@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login_servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
				PrintWriter out = response.getWriter();

				String login_name = request.getParameter("login_name");
				String password = request.getParameter("password");
				String sqlout = new String(validate_login.checkUser(login_name,password));
				
				if(sqlout.equals("admin") || sqlout.equals("user") )
				{
				String param;
				HttpSession session = request.getSession(true);
				param = sqlout;
				session.setAttribute("userrole", param);
				session.setAttribute("username", login_name);
				RequestDispatcher rs = request.getRequestDispatcher("gigo_home.jsp");
				rs.forward(request, response);
				}else {
				out.println("username or password incorreect");
				RequestDispatcher rs = request.getRequestDispatcher("default.jsp");
				rs.include(request,response); 
				}
				
	}

}
