class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_role] = user.user_role

      if user.user_role == "admin"
      redirect_to admin_index_url
      end

      if user.user_role == "Supervisor"
        redirect_to supervisor_index_url
      end

      if user.user_role == "Guard"
        redirect_to guard_index_url
      end



    else
      redirect_to login_url, alert: "Invalid Username or Password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_url, alert: "Successfully Loged out"
  end
end
