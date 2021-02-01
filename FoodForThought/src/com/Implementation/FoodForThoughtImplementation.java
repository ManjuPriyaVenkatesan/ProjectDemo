package com.Implementation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.UserRegistrationBean;
import com.DBConnections.DatabaseConnections;
import com.Interface.FoodForThoughtInterface;

public class FoodForThoughtImplementation implements FoodForThoughtInterface{

	static Connection con;
	int k = 0;
	@Override
	public int UserRegistration(UserRegistrationBean URB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `foodforthought`.`userregistration` VALUES(?,?,?,?,?)");
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
			ResultSet rs=stmt.executeQuery("SELECT * FROM `foodforthought`.`userregistration`");
			
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
	

	
}
