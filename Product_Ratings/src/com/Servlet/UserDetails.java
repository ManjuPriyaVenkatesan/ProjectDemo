package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.UserBuyProductsBean;
import com.Implementation.ProductRatingsImplementation;
import com.Interface.ProductRatingsInterface;

/**
 * Servlet implementation class UserDetails
 */
@WebServlet("/UserDetails")
public class UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserDetails() {
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
		
		String productid = request.getParameter("productid");
		String username = request.getParameter("username");
		String contactnumber = request.getParameter("contactnumber");
	
		String paymentmode = request.getParameter("paymentmode");
		String deliveryaddress = request.getParameter("deliveryaddress");
		String writecomment = request.getParameter("writecomment");
		
		System.out.println("productid" + productid);
		System.out.println("username" + username);
		System.out.println("contactnumber" + contactnumber);
		System.out.println("paymentmode" + paymentmode);
		System.out.println("deliveryaddress" + deliveryaddress);
		
		UserBuyProductsBean UBPB = new UserBuyProductsBean();
		UBPB.setProductid(productid);
		UBPB.setUsername(username);
		UBPB.setContactnumber(contactnumber);
		UBPB.setPaymentmode(paymentmode);
		UBPB.setDeliveryaddress(deliveryaddress);
		UBPB.setWritecomment(writecomment);
		
		ProductRatingsInterface SDI = new ProductRatingsImplementation();
		int i = SDI.BuyProducts(UBPB);
		
		if(i==1)
		{
			response.sendRedirect("shipped.jsp?emailid="+contactnumber);
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
		
		
	}

}
