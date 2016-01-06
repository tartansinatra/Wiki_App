class CommentsController < ApplicationController
  
  # before_action :authenticate_user!, except: [:index]
  before_action :load_comment, except:[:new, :create]
  load_and_authorize_resource

  def new
    @comment = Comment.new
  end

  def create
    current_user.comments.create(comment_params)
    redirect_to comments_path
  end

  def show
  end

  def edit
  end

  def update
    @comment.update(comment_params)
    redirect_to(comments_path)
  end

  def destroy
    @comment.destroy
    redirect_to(comments_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:comment)
  end

  def load_comment
    @comment = Comment.find(params[:id]) 
  end

end