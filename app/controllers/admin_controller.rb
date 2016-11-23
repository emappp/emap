class AdminController < ApplicationController
  def index
    @id = session[:user_id]
    @user = User.find_by(id: @id)

    @response =
        HTTParty.get("http://api.wunderground.com/api/a0d292345c3e6d58/forecast/geolookup/conditions/q/98660.json")


    @bbc = HTTParty.get("https://newsapi.org/v1/articles?source=bbc-news&sortBy=top&apiKey=d99f14bd9c2b40a6bc88d2867d098ff8")
    @cnn = HTTParty.get("https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=d99f14bd9c2b40a6bc88d2867d098ff8")



  end

  def activation
    @id = session[:user_id]
    @user = User.find_by(id: @id)
    @users = User.all
  end

  def approve

  end


end
