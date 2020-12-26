package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.TwitterScrapingBean;
import com.Bean.UserLoginBean;
import com.Implementation.SentiDiffImplementation;
import com.Interface.SentiDiffInterface;

import twitter4j.ResponseList;
import twitter4j.Status;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;


/**
 * Servlet implementation class TwitterScraping
 */
@WebServlet("/TwitterScrapingServlet")
public class TwitterScrapingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TwitterScrapingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		ConfigurationBuilder cf = new ConfigurationBuilder();
		cf.setDebugEnabled(true)
		// Twitter Developer Account API Details
				.setOAuthConsumerKey("")
				.setOAuthConsumerSecret("")
				.setOAuthAccessToken("")
				.setOAuthAccessTokenSecret("");
		
		TwitterFactory tf = new TwitterFactory(cf.build());
		twitter4j.Twitter twitter = tf.getInstance();
		
		
		try {
			ResponseList<Status> status = twitter.getHomeTimeline();
			int count = 0 , i = 0;
			String tweets = "";
			for(Status st : status)
			{
				
				String tweetername = st.getUser().getName();
				System.out.println(tweetername);
				
				String tweettext = st.getText();
				System.out.println(tweettext);
				
				int ReTweetsCount = st.getRetweetCount();
				System.out.println(ReTweetsCount);
				
				int FavouriteCount = st.getFavoriteCount();
				System.out.println(FavouriteCount);
				
				tweets = st.getUser().getName() + st.getText() + st.getRetweetCount() + st.getFavoriteCount();
				
				System.out.println(tweets);
				
				count = tweetername.length();
				//System.out.println(count);
				
				if(count > 0)
				{
					 TwitterScrapingBean TSB = new TwitterScrapingBean();
					 TSB.setTweets(tweets);
					 
					 System.out.println("tweets" + tweets);
						
					 SentiDiffInterface SDI = new SentiDiffImplementation();
					 i = SDI.TweetsScraping(TSB);
					 
					 System.out.println("login " + i);
						
				}
			}
			
			 if(i==1)
			 {
				 response.sendRedirect("TwitterScraping.jsp");
			 }
			 else
			 {
				response.sendRedirect("error.jsp");
			 }
			
			
		} catch (TwitterException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.sendRedirect("error.jsp");
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
				
	}
		
}
