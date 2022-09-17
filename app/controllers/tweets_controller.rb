class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  
  def create
    image = params[:tweet][:image].read
    @tweet  = Tweet.new(message: params[:tweet][:message], tdate: Time.current, image: image)
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
    image = params[:tweet][:image].read
    tweet = Tweet.find(params[:id])
    if tweet.update(message: params[:tweet][:message], image: image)
      redirect_to '/'
    else
      render 'edit'
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
  
  def get_image
    tweet = Tweet.find(params[:id])
    send_data tweet.image, disposition: :inline, type: 'image/png'
  end
  
end
