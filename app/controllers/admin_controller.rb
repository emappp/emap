class AdminController < ApplicationController
  def index
    @id = session[:user_id]
    @user = User.find_by(id: @id)
  end
end
