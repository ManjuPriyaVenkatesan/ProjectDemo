package com.Interface;

import com.Bean.ForgotPasswordBean;
import com.Bean.TweetAnythingBean;
import com.Bean.TwitterCleaningBean;
import com.Bean.TwitterScrapingBean;
import com.Bean.UserRegistrationBean;

public interface SentiDiffInterface {

	public int UserRegistration(UserRegistrationBean URB);
	public int UserLogin(String emailid,String password);
	public int TweetsScraping(TwitterScrapingBean TSB);
	public int TweetsCleaning(TwitterCleaningBean TCB);
	public int TweetAnything(TweetAnythingBean TAB);
	public int ForgotPassword(ForgotPasswordBean FPB);
	public int CheckEmailid(String emailid);
	
}
