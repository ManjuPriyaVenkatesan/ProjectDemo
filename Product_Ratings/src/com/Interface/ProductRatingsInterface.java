package com.Interface;


import com.Bean.AddCommentsBean;
import com.Bean.AddProductsBean;
import com.Bean.UserBuyProductsBean;
import com.Bean.UserRegistrationBean;

public interface ProductRatingsInterface {

	public int UserRegistration(UserRegistrationBean URB);
	public int UserLogin(String emailid,String password);
	public int AddProducts(AddProductsBean APB);
	public int BuyProducts(UserBuyProductsBean UBPB);
	public int AddComments(AddCommentsBean ACB);
		
}
