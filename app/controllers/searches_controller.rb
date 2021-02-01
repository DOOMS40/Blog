class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @user = User.find(params[:user_id])
    @search = @user.searches.new(search_params)
    if @search.save
      redirect_to @user
    else
      render :new
    end
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end

end
