package com.Interface;



import com.Bean.HosterHostHouseBean;
import com.Bean.HosterRegistrationBean;
import com.Bean.UserRegistrationBean;
import com.Bean.UserViewHouseBean;

public interface TAPEInterface {

	public int UserRegistration(UserRegistrationBean URB);
	public int UserLogin(String emailid,String password);
	
	public int HosterRegistration(HosterRegistrationBean HRB);
	public int HosterLogin(String emailid,String password);

	
	public int HosterHostHouse(HosterHostHouseBean HHHB);
	
	public int UserSearchHistory(UserViewHouseBean UVHB);
}
