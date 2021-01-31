class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    user_find
  end

  private 
  
  def user_find
    @user = User.find(1)
  end
end
