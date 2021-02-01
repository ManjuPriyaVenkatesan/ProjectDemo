package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.HosterLoginBean;
import com.Implementation.TAPEImplementation;
import com.Interface.TAPEInterface;

/**
 * Servlet implementation class HosterLoginServlet
 */
@WebServlet("/HosterLoginServlet")
public class HosterLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HosterLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		 String emailid = request.getParameter("emailid");
		 String password = request.getParameter("password");
		 
		 System.out.println("login" + emailid);
		 
		 HosterLoginBean HLB = new HosterLoginBean();
		 HLB.setEmailid(emailid);
		 HLB.setPassword(password);
		 
		 System.out.println("login" + HLB);
			
		 TAPEInterface SDI = new TAPEImplementation();
		 int i = SDI.HosterLogin(emailid,password);
		 
		 System.out.println("login " + i);
		 
		 if(i==1)
		 {
			response.sendRedirect("HosterHome.jsp?emailid="+ emailid );
		 }
		 else
		 {
			response.sendRedirect("error.jsp");
		 }

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
