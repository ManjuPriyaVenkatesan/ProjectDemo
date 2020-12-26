package com.Bean;

public class TwitterCleaningBean {

	private String TweetName,TweetText,TweetURL,ReTweetsCount,FavouriteCount;

	public String getReTweetsCount() {
		return ReTweetsCount;
	}

	public void setReTweetsCount(String reTweetsCount) {
		ReTweetsCount = reTweetsCount;
	}

	public String getFavouriteCount() {
		return FavouriteCount;
	}

	public void setFavouriteCount(String favouriteCount) {
		FavouriteCount = favouriteCount;
	}

	public String getTweetName() {
		return TweetName;
	}

	public void setTweetName(String tweetName) {
		TweetName = tweetName;
	}

	public String getTweetText() {
		return TweetText;
	}

	public void setTweetText(String tweetText) {
		TweetText = tweetText;
	}

	public String getTweetURL() {
		return TweetURL;
	}

	public void setTweetURL(String tweetURL) {
		TweetURL = tweetURL;
	}
	
}
