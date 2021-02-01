package com.Implementation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.HosterHostHouseBean;
import com.Bean.HosterRegistrationBean;
import com.Bean.UserRegistrationBean;
import com.Bean.UserViewHouseBean;
import com.DBConnections.DatabaseConnections;
import com.Interface.TAPEInterface;

public class TAPEImplementation implements TAPEInterface{

	static Connection con;
	int k = 0;
	@Override
	public int UserRegistration(UserRegistrationBean URB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `tape`.`userregistration` VALUES(?,?,?,?,?)");
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
			ResultSet rs=stmt.executeQuery("SELECT * FROM `tape`.`userregistration`");
			
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
	public int HosterRegistration(HosterRegistrationBean HRB) {
		
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `tape`.`hosterregistration` VALUES(?,?,?,?,?)");
			obj.setString(1, HRB.getUsername());
			obj.setString(2, HRB.getEmailid());
			obj.setString(3, HRB.getPhoneno());
			obj.setString(4, HRB.getPassword());
			obj.setString(5, HRB.getConfirmpassword());
			
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
	public int HosterLogin(String emailid, String password) {
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM `tape`.`hosterregistration`");
			
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
	public int HosterHostHouse(HosterHostHouseBean HHHB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `tape`.`hosterhosthouse` VALUES(LOAD_FILE(?),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			obj.setString(1, HHHB.getHosterhouseimagepath());
			obj.setString(2, HHHB.getHosterhouseimagename());
			obj.setString(3, HHHB.getHosterhouseimagepath());
			obj.setString(4, HHHB.getHosterhouseid());
			obj.setString(5, HHHB.getHosterhouseemailid());
			
			obj.setString(6, HHHB.getHosterhousetitle());
			obj.setString(7, HHHB.getHosterhouseaddress());
			obj.setString(8, HHHB.getHosterhousecity());
			obj.setString(9, HHHB.getHosterhousestate());
			obj.setString(10, HHHB.getHosterhousepincode());

			
			obj.setString(11, HHHB.getHosterhousecountry());
			obj.setString(12, HHHB.getHosterhouseavailablefrom());
			obj.setString(13, HHHB.getHosterhouseavailableto());
			obj.setString(14, HHHB.getHosterhouseadults());
			obj.setString(15, HHHB.getHosterhousechildren());
			
			obj.setString(16, HHHB.getHosterhousedistancefromcenter());
			obj.setString(17, HHHB.getHosterhouseminnoofdaystostay());
			obj.setString(18, HHHB.getHosterhousenoofbathrooms());
			obj.setString(19, HHHB.getHosterhousenoofbedrooms());
			obj.setString(20, HHHB.getHosterhousenoofbeds());
			
			obj.setString(21, HHHB.getHosterhousepetfriendly());
			obj.setString(22, HHHB.getHosterhousecarparking());
			obj.setString(23, HHHB.getHosterhousewirelessinternet());
			obj.setString(24, HHHB.getHosterhousereservations());
			obj.setString(25, HHHB.getHosterhouseprivateparking());

			obj.setString(26, HHHB.getHosterhousesmokingarea());
			obj.setString(27, HHHB.getHosterhousewheelchairaccessible());
			obj.setString(28, HHHB.getHosterhousepool());
			obj.setString(29, HHHB.getHosterhousewashingmachine());
			obj.setString(30, HHHB.getHosterhousedryer());
			
			
			
			obj.setString(31, HHHB.getHosterhousekitchenarea());
			
			

			
			
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
	public int UserSearchHistory(UserViewHouseBean UVHB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("TRUNCATE TABLE `tape`.`usersearchhistory`");
			
			PreparedStatement obj = con.prepareStatement("INSERT INTO `tape`.`usersearchhistory` VALUES(?,?,?,?,?)");
			obj.setString(1, UVHB.getDestination());
			obj.setString(2, UVHB.getCheckin());
			obj.setString(3, UVHB.getCheckout());
			obj.setString(4, UVHB.getAdults());
			obj.setString(5, UVHB.getChildren());
			
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
