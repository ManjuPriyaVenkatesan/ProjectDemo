package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.AddCommentsBean;
import com.Implementation.ProductRatingsImplementation;
import com.Interface.ProductRatingsInterface;

/**
 * Servlet implementation class AddCommentsServlet
 */
@WebServlet("/AddCommentsServlet")
public class AddCommentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCommentsServlet() {
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
		String emailid = request.getParameter("emailid");
		String comments = request.getParameter("comments");
		
		System.out.println("comments" + comments);
		
		AddCommentsBean ACB = new AddCommentsBean();
		ACB.setProductid(productid);
		ACB.setEmailid(emailid);
		ACB.setComments(comments);
		
		ProductRatingsInterface SDI = new ProductRatingsImplementation();
		int i = SDI.AddComments(ACB);
		
		if(i==1)
		{
			response.sendRedirect("AddComment.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
		
		
		
		
		
	}

}
