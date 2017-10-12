class TweetsController < ApplicationController
  def new
    @tweet = Tweet.new
  end

  def index
    # !!!should be all tweets of all friendships ordered chronologically
    @tweets = Tweet.all
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def create
    @tweet = Tweet.new(permit_tweet)
    if @tweet.save
      redirect_to tweet_path(@tweet)
    else
      @errors = @tweet.errors.full_messages
      flash[:error] = @tweet.errors.full_messages
      p params
      render :new
    end
  end

  private
  def permit_tweet
    params.require(:tweet).permit(:body, :user)
  end
end
