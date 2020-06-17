class ExercisesController < ApplicationController
	def new
		@exercise = Exercise.new
		@course = Course.find(params[:course_id])
    authorize @exercise
  end


	def create
		@exercise = Exercise.new(exercise_params)
		@exercise.course = Course.find(params[:course_id])
		authorize @exercise
    if @exercise.save
      flash[:success] = "Exercise Create Successfully"
      redirect_to course_path(Course.find(params[:course_id]))
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
	end
	
	private

  def exercise_params
    params.require(:exercise).permit(:code, :difficulty)
	end
end
