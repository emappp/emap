class AdminController < ApplicationController
  def index
    @id = session[:user_id]
    @user = User.find_by(id: @id)
  end

  def activation
    @id = session[:user_id]
    @user = User.find_by(id: @id)
    @users = User.all
  end

  def approve

  end


end
