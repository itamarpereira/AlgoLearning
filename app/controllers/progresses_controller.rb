class ProgressesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @progress = Progress.new
    @progress.user = current_user
    @progress.course = @course
    authorize @progress
    @progress.save
    redirect_to lecture_course_path(@progress.course)
  end
end
