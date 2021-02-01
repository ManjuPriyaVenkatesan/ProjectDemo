package com.DBConnections;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnections {

	static Connection con;
	public static Connection createConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/tape","MySQL Username","MySQL Password");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
		
	}
}
