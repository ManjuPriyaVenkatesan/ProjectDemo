package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.AddProductsBean;
import com.Implementation.ProductRatingsImplementation;
import com.Interface.ProductRatingsInterface;

/**
 * Servlet implementation class AdminHome
 */
@WebServlet("/AdminHome")
public class AdminHome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminHome() {
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
		String productname = request.getParameter("productname");
		String productbrand = request.getParameter("productbrand");
		String productprice = request.getParameter("productprice");
		String productdescription = request.getParameter("productdescription");
		String photoname = request.getParameter("productimage");
		String path = "Local Full Path\\Product_Ratings\\WebContent\\img\\";
		String photopath = path.concat(photoname);
		System.out.println(photopath);
		
		System.out.println("Add Products"+ productid);
	
		AddProductsBean APB = new AddProductsBean();
		APB.setProductid(productid);
		APB.setProductname(productname);
		APB.setProductbrand(productbrand);
		APB.setProductprice(productprice);
		APB.setProductdescription(productdescription);
		APB.setPhotoname(photoname);
		APB.setPhotopath(photopath);
		System.out.println("Add Products"+ APB);
		
		
		ProductRatingsInterface PRI = new ProductRatingsImplementation();
		int i = PRI.AddProducts(APB);
		System.out.println("Add Products"+ i);
		
		if(i==1)
		{
			response.sendRedirect("AdminAddProducts.jsp");
		}
		else
		{
			response.sendRedirect("error.jsp");
		}
		
	}

}
