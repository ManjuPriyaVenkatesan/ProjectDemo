package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Bean.TwitterCleaningBean;
import com.Bean.TwitterScrapingBean;
import com.Implementation.SentiDiffImplementation;
import com.Interface.SentiDiffInterface;

import twitter4j.ResponseList;
import twitter4j.Status;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

/**
 * Servlet implementation class TwitterCleaningServlet
 */
@WebServlet("/TwitterCleaningServlet")
public class TwitterCleaningServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TwitterCleaningServlet() {
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
			String tweets = "",TweetText="",TweetURL="";
			for(Status st : status)
			{
				//System.out.println(st.getUser().getName()+"........."+st.getText());
				String TweetName = st.getUser().getName();
				String Tweets = st.getText();
				int ReTweetsCount = st.getRetweetCount();
				int FavouriteCount = st.getFavoriteCount();
				//System.out.println(Tweets);Integer.toString(int)
				
				if(Tweets.contains("https"))
				{
				String[] TweetSplit = Tweets.split("https");
				//System.out.println(TweetSplit[0]);
				TweetText = TweetSplit[0];
				TweetURL = "https"+TweetSplit[1];
				//System.out.println("https"+TweetSplit[1]);
				}
				else
				{
					TweetText = st.getText();
				}
				
				System.out.println(TweetName);
				System.out.println(TweetText);
				System.out.println(TweetURL);
				System.out.println(ReTweetsCount);
				System.out.println(FavouriteCount);
				
				
				TwitterCleaningBean TCB = new TwitterCleaningBean();
				TCB.setTweetName(TweetName);
				TCB.setTweetText(TweetText);
				TCB.setTweetURL(TweetURL);
				TCB.setReTweetsCount(Integer.toString(ReTweetsCount));
				TCB.setFavouriteCount(Integer.toString(FavouriteCount));
				
				
				 SentiDiffInterface SDI = new SentiDiffImplementation();
				 i = SDI.TweetsCleaning(TCB);
				 
				 System.out.println("login " + i);
			}
			
			if(i==1)
			 {
				 response.sendRedirect("TwitterCleaning.jsp");
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
