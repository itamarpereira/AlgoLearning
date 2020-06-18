class ProgressesController < ApplicationController
  def create
    @course = Course.find(params[:course_id])
    @progress = Progress.new
    @progress.user = current_user
    @progress.course = @course
    @progress.status = 'Ongoing'
    authorize @progress
    @progress.save
    redirect_to lecture_course_path(@progress.course)
  end

  def update
    @course = Course.find(params[:course_id])
    @progress = Progress.find(params[:id])
    authorize @progress
    @progress.update(progress_params)
    redirect_to dashboard_path
  end

  private

  def progress_params
    params.require(:progress).permit(:status)
  end
end
