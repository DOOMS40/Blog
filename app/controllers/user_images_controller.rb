class UserImagesController < ApplicationController
  
  def show
    user_image_find
  end

  def new
    @user_image = UserImage.new
  end

  def create
    @user_image = UserImage.new(user_image_params)
    if @user_image.save
      redirect_to @user_image
    else
      render :new
    end
  end

  def delete
    user_image_find
    @user_image.destroy!
    redirect_to @user
  end


  private

  def user_image_params
    params.require(:user_image).permit(:description, :image, :user_id)
  end

  def user_image_find
    @user_image = UserImage.find(params[:id])
  end
end
