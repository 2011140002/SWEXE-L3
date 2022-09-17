class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    @tweet  = Tweet.new(message: params[:tweet][:message], tdate: Time.current)
    if @tweet.save
      redirect_to '/'
    else
      render 'new'
    end
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def update
    if tweet = Tweet.update(message: params[:tweet][:message])
      redirect_to '/'
    else
      render 'edit'
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
  
end
