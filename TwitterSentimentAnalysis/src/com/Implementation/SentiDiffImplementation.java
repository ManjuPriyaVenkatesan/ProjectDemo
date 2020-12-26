package com.Implementation;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.Bean.ForgotPasswordBean;
import com.Bean.TweetAnythingBean;
import com.Bean.TwitterCleaningBean;
import com.Bean.TwitterScrapingBean;

import com.Bean.UserRegistrationBean;
import com.DBConnections.DatabaseConnections;
import com.Interface.SentiDiffInterface;

public class SentiDiffImplementation implements SentiDiffInterface{

	static Connection con;
	int k = 0;
	@Override
	public int UserRegistration(UserRegistrationBean URB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `sentidiff`.`userregistration` VALUES(?,?,?,?,?,?,LOAD_FILE(?),?)");
			obj.setString(1, URB.getUsername());
			obj.setString(2, URB.getEmailid());
			obj.setString(3, URB.getPhoneno());
			obj.setString(4, URB.getPassword());
			obj.setString(5, URB.getConfirmpassword());
			obj.setString(6, URB.getPhotopath());
			obj.setString(7, URB.getPhotopath());
			obj.setString(8, URB.getPhotoname());
			
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
			ResultSet rs=stmt.executeQuery("SELECT * FROM `sentidiff`.`userregistration`");
			
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
	public int TweetsScraping(TwitterScrapingBean TSB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `sentidiff`.`tweetsscraping` VALUES(?)");
			obj.setString(1,TSB.getTweets());
			
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
	public int TweetsCleaning(TwitterCleaningBean TCB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `sentidiff`.`tweetscleaning` VALUES(?,?,?,?,?)");
			obj.setString(1,TCB.getTweetName());
			obj.setString(2,TCB.getTweetText());
			obj.setString(3,TCB.getTweetURL());
			obj.setString(4,TCB.getReTweetsCount());
			obj.setString(5,TCB.getFavouriteCount());
			
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
	public int TweetAnything(TweetAnythingBean TAB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		try
		{
			PreparedStatement obj = con.prepareStatement("INSERT INTO `sentidiff`.`tweetanything` VALUES(?,?,?)");
			obj.setString(1,TAB.getSubject());
			obj.setString(2,TAB.getMessage());
			obj.setString(3,TAB.getEmailid());
			
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
	public int ForgotPassword(ForgotPasswordBean FPB) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		try
		{
			PreparedStatement obj = con.prepareStatement("UPDATE `sentidiff`.`userregistration` SET password = ? ,confirmpassword = ? WHERE emailid = ?");
			obj.setString(1,FPB.getPassword());
			obj.setString(2,FPB.getConfirmpassword());
			obj.setString(3,FPB.getEmailid());
			
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
	public int CheckEmailid(String emailid) {
		// TODO Auto-generated method stub
		con = DatabaseConnections.createConnection();
		System.out.println(con);
		
		try
		{
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT emailid FROM `sentidiff`.`userregistration`");
			
			System.out.println(emailid);
			
			
			while(rs.next())
			{
				String emailidch = rs.getString("emailid");
				
				System.out.println(emailidch);
				
				if(emailidch.equals(emailid))
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
