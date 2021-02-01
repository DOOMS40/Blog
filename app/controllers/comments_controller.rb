class CommentsController < ApplicationController
  before_action :authenticate_user!
  def show
    comment_find
  end

  def new
    @comment = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.new(comment_params)
    if @comment.save
      redirect_to @user
    else 
      render :new
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:authors,:description)
  end

  def comment_find
    @comment = Comment.find(params[:id])
  end
end
