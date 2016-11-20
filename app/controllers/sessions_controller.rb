class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_index_url
    else
      redirect_to login_url, alert: "Invalid Username or Password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully Loged out"
  end
end
