class SupervisorController < ApplicationController
  before_action :access

  def access
    if session[:user_role] != "Supervisor"
      redirect_to login_url, notice: "You did not have supervisor access"
    end
  end
  def index
    @id = session[:user_id]
    @user = User.find_by(id: @id)

    @response =
        HTTParty.get("http://api.wunderground.com/api/a0d292345c3e6d58/forecast/geolookup/conditions/q/98660.json")


    @bbc = HTTParty.get("https://newsapi.org/v1/articles?source=bbc-news&sortBy=top&apiKey=d99f14bd9c2b40a6bc88d2867d098ff8")
    @cnn = HTTParty.get("https://newsapi.org/v1/articles?source=cnn&sortBy=top&apiKey=d99f14bd9c2b40a6bc88d2867d098ff8")



  end

  def checkin
    if session[:check] == true
      session[:check] = false
      @checkInLog = Checkin.new(user_id: session[:user_id], status: "Check-Out")
    else
      session[:check] = true
      @checkInLog = Checkin.new(user_id: session[:user_id], status: "Check-In")
    end

    if @checkInLog.save
      redirect_to supervisor_index_url
    end


  end

end
