package com.Implementation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.AddCommentsBean;
import com.Bean.AddProductsBean;
import com.Bean.UserBuyProductsBean;
import com.Bean.UserRegistrationBean;
import com.DBConnections.DatabaseConnections;
import com.Interface.ProductRatingsInterface;

public class ProductRatingsImplementation implements ProductRatingsInterface{

	static Connection con;
	int k = 0;
	@Override
	public int UserRegistration(UserRegistrationBean URB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `product_ratings`.`userregistration` VALUES(?,?,?,?,?)");
			obj.setString(1, URB.getUsername());
			obj.setString(2, URB.getEmailid());
			obj.setString(3, URB.getPhoneno());
			obj.setString(4, URB.getPassword());
			obj.setString(5, URB.getConfirmpassword());
			
			k = obj.executeUpdate();
			System.out.println("k======"+k);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
	@Override
	public int UserLogin(String emailid, String password) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM `product_ratings`.`userregistration`");
			
			System.out.println(emailid);
			System.out.println(password);
			
			while(rs.next())
			{
				String emailidch = rs.getString("emailid");
				String passwordch = rs.getString("password");
				
				System.out.println(emailidch +" "+ passwordch);
				
				if(emailidch.equals(emailid) && passwordch.equals(password))
				{
					
					k=1;
				}
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(e);
		}
		return k;
	}
	@Override
	public int AddProducts(AddProductsBean APB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `product_ratings`.`adminaddproducts` VALUES(?,?,?,?,?,?,?,LOAD_FILE(?))");
			obj.setString(1, APB.getProductid());
			obj.setString(2, APB.getProductname());
			obj.setString(3, APB.getProductbrand());
			obj.setString(4, APB.getProductprice());
			obj.setString(5, APB.getProductdescription());
			obj.setString(6, APB.getPhotoname());
			obj.setString(7, APB.getPhotopath());
			obj.setString(8, APB.getPhotopath());
			

			k = obj.executeUpdate();
			System.out.println("k======"+k);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
	@Override
	public int BuyProducts(UserBuyProductsBean UBPB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `product_ratings`.`userbuyproducts` VALUES(?,?,?,?,?,?)");
			obj.setString(1, UBPB.getProductid());
			obj.setString(2, UBPB.getUsername());
			obj.setString(3, UBPB.getContactnumber());
			obj.setString(4, UBPB.getPaymentmode());
			obj.setString(5, UBPB.getDeliveryaddress());
			obj.setString(6, UBPB.getWritecomment());
			

			k = obj.executeUpdate();
			System.out.println("k======"+k);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
	@Override
	public int AddComments(AddCommentsBean ACB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `product_ratings`.`useraddcomments` VALUES(?,?,?)");
			obj.setString(1, ACB.getProductid() );
			obj.setString(2, ACB.getEmailid());
			obj.setString(3, ACB.getComments());

			k = obj.executeUpdate();
			System.out.println("k======"+k);
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return k;
	}
	
}
