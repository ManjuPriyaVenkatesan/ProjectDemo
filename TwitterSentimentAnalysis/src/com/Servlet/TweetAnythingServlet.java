package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.TweetAnythingBean;
import com.Implementation.SentiDiffImplementation;
import com.Interface.SentiDiffInterface;

/**
 * Servlet implementation class TweetAnythingServlet
 */
@WebServlet("/TweetAnythingServlet")
public class TweetAnythingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TweetAnythingServlet() {
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
		
		String emailid = request.getParameter("emailid");
		String subject = request.getParameter("subject");
		String message = request.getParameter("message");
		
		System.out.println("Tweet Anything......" + emailid);
		System.out.println("Tweet Anything......." + subject);
		System.out.println("Tweet Anything......." + message);
		
		TweetAnythingBean TAB = new TweetAnythingBean();
		TAB.setEmailid(emailid);
		TAB.setSubject(subject);
		TAB.setMessage(message);
		
		SentiDiffInterface SDI = new SentiDiffImplementation();
		int i = SDI.TweetAnything(TAB);
		System.out.println("TweetAnything"+ i);
		
		if(i==1)
		{
			response.sendRedirect("TweetHome.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
