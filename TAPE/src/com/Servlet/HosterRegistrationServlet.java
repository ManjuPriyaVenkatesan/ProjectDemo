package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.HosterRegistrationBean;
import com.Implementation.TAPEImplementation;
import com.Interface.TAPEInterface;

/**
 * Servlet implementation class HosterRegistrationServlet
 */
@WebServlet("/HosterRegistrationServlet")
public class HosterRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HosterRegistrationServlet() {
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
		
		
		String username = request.getParameter("username");
		String emailid = request.getParameter("emailid");
		String phoneno = request.getParameter("phoneno");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		
		System.out.println("registration" + username);
		
		if(password.equals(confirmpassword))
		{
			HosterRegistrationBean HRB = new HosterRegistrationBean();
			
			HRB.setUsername(username);
			HRB.setEmailid(emailid);
			HRB.setPhoneno(phoneno);
			HRB.setPassword(password);
			HRB.setConfirmpassword(confirmpassword);
			
			System.out.println("registration"+ HRB);
			
			TAPEInterface SDI = new TAPEImplementation();
			int i = SDI.HosterRegistration(HRB);
			System.out.println("registration"+ i);
			
			if(i==1)
			{
				response.sendRedirect("HosterSignUp.jsp");
			}
			else
			{
				response.sendRedirect("error.jsp");
			}
			
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		

		
	}

}
