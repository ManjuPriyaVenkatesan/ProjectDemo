package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.UserRegistrationBean;
import com.Implementation.ProductRatingsImplementation;
import com.Interface.ProductRatingsInterface;

/**
 * Servlet implementation class UserRegistrationServlet
 */
@WebServlet("/UserRegistrationServlet")
public class UserRegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegistrationServlet() {
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
		
		String username = request.getParameter("username");
		String emailid = request.getParameter("emailid");
		String phoneno = request.getParameter("phoneno");
		String password = request.getParameter("password");
		String confirmpassword = request.getParameter("confirmpassword");
		
		System.out.println("registration" + username);
		
		if(password.equals(confirmpassword))
		{
			UserRegistrationBean URB = new UserRegistrationBean();
			
			URB.setUsername(username);
			URB.setEmailid(emailid);
			URB.setPhoneno(phoneno);
			URB.setPassword(password);
			URB.setConfirmpassword(confirmpassword);
			
			System.out.println("registration"+ URB);
			
			ProductRatingsInterface SDI = new ProductRatingsImplementation();
			int i = SDI.UserRegistration(URB);
			System.out.println("registration"+ i);
			
			if(i==1)
			{
				response.sendRedirect("UserLogin.jsp");
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
