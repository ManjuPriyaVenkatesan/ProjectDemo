package com.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.UserLoginBean;
import com.Implementation.TAPEImplementation;
import com.Interface.TAPEInterface;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		 
		 String emailid = request.getParameter("emailid");
		 String password = request.getParameter("password");
		 
		 System.out.println("login" + emailid);
		 
		 UserLoginBean ULB = new UserLoginBean();
		 ULB.setEmailid(emailid);
		 ULB.setPassword(password);
		 
		 System.out.println("login" + ULB);
			
		 TAPEInterface SDI = new TAPEImplementation();
		 int i = SDI.UserLogin(emailid,password);
		 
		 System.out.println("login " + i);
		 
		 if(i==1)
		 {
			response.sendRedirect("UserHome.jsp?emailid="+ emailid);
		 }
		 else
		 {
			response.sendRedirect("error.jsp?emailid="+ emailid);
		 }
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
