package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.Bean.UserViewHouseBean;
import com.Implementation.TAPEImplementation;
import com.Interface.TAPEInterface;

/**
 * Servlet implementation class UserViewHouseServlet
 */
@WebServlet("/UserViewHouseServlet")
public class UserViewHouseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserViewHouseServlet() {
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
		String destination = request.getParameter("destination");
		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		String adults = request.getParameter("adults");
		String children = request.getParameter("children");
		
		UserViewHouseBean UVHB = new UserViewHouseBean();
		UVHB.setDestination(destination);
		UVHB.setCheckin(checkin);
		UVHB.setCheckout(checkout);
		UVHB.setAdults(adults);
		UVHB.setChildren(children);
		
		TAPEInterface SDI = new TAPEImplementation();
		int i = SDI.UserSearchHistory(UVHB);
		
		if(i==1)
		{
			response.sendRedirect("UserSearchHouse.jsp?emailid=" + emailid);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
	
		
		
		
		
		
		
		
		
		
	}

}
