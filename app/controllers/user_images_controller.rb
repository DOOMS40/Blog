class UserImagesController < ApplicationController
  def show
  end

  def create
    @user_image = UserImage.new(user_image_params)
  end

  def delete
  end
end
