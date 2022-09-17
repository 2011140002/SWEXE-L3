class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
    @tweet = Tweet.new
  end
  def create
    
  end
  
  def update
    
  end
  
  def edit
    
  end
  
  def destroy
    
  end
  
end
