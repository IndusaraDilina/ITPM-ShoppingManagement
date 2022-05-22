package com.uniquedeveloper.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Registration
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uname = request.getParameter("name");
		String uemail = request.getParameter("email");
		String upwd = request.getParameter("pass");
		String umobile = request.getParameter("contact");
		String unic = request.getParameter("nic");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		//write db
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","Indusara_123");
			PreparedStatement pst = con.prepareStatement("insert into signup(uname,upwd,uemail,umobile,unic)values(?,?,?,?,?)");
			pst.setString(1,uname);	
			pst.setString(2,upwd);	
			pst.setString(3,uemail);	
			pst.setString(4,umobile);	
			pst.setString(5,unic);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("registration.jsp");
			if(rowCount > 0) {
				request.setAttribute("status","success");
				
			}else {
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request,response);
			
	}catch(Exception e){
		e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	
	}	

}