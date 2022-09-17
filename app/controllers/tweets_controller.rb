class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  def create
    tweet  = Tweet.new(message: params[:tweet][:message], tdate: params[:tweet][:tdate])
    tweet.save
    redirect_to '/'
  end
  
  def update
    
  end
  
  def edit
    
  end
  
  def destroy
    
  end
  
end
