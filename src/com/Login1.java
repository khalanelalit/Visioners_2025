package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login1
 */
public class Login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		int i=0;
		String Email,Pass;
		 Email=request.getParameter("email");
		 Pass=request.getParameter("pass");
	 //			 Connection con=DbConnection.connect();
//			PreparedStatement stmt=con.prepareStatement("select * from  complents where Email=? and password=? ");
//			stmt.setString(1,email);
//			stmt.setString(2, pass);
//			ResultSet rs=stmt.executeQuery();
//			if(rs.next())
	 if(Email.equals("admin@gmail.com") && Pass.equals("admin"))
	 {
		 response.sendRedirect("operation.html");
	 }
		else
		{
			 response.sendRedirect("Login1.html");
		}
	}

}
