class CommentsController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @comment = Comment.new(comment_params)
    @comment.progress = Progress.where(["course_id = ? and user_id = ?", @course, current_user.id]).first
    authorize @comment
    @comment.save
    redirect_to video_course_path(params[:course_id])
  end

  def update
    @comment = Comment.find(params[:id])
    # se o botao clicado foi o verde entao upvote
    if params[:vote] == "upvote"
      @comment.liked_by current_user
    # se o botao clicado foi o vermelho entao downvote
    elsif params[:vote] == "downvote"
      @comment.disliked_by current_user
    end
    @comment.save!
    redirect_to video_course_path(@comment.progress.course)
  end
    
  def destroy
    @comment = Comment.find(params[:id])
    authorize @comment
    @comment.destroy
    redirect_to video_course_path(@comment.progress.course)
  end

  private

  def comment_params
    params.require(:comment).permit(:description, :progress)
  end
end
