class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def index
    # !!!should be all tweets of all friendships ordered chronologically
    @tweets = Tweet.all
  end

  def show
  end

  def create
    @tweet = Tweet.new(permit_tweet)
    if @tweet.save
      redirect_to tweet_path(@tweet)
    else
      flash[:error] = @tweet.errors.full_messages
      redirect_to new_tweet_path
    end
  end

  private
  def permit_tweet
    params.require(:tweet).permit(:body, :user_id)
  end
end
