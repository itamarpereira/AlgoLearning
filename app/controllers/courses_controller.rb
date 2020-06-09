class CoursesController < ApplicationController
	before_action :set_course, only: [:show, :edit, :update, :destroy, :intro]

	def index
	  @courses = Course.all
	end

	def show
	end
  
    def intro
	end

	def new
	  @course = Course.new
	end

	def create
		@course = Course.new(course_params)
    if @course.save
      flash[:success] = "Object successfully created"
      redirect_to @course
   	else
      flash[:error] = "Something went wrong"
      render 'new'
    end
	end

	def edit
	end

	def update
    if @course.update(course_params)
      redirect_to @course, notice: 'Course Create Succesfully'
    else
      render :edit
    end
	end

	def destroy
		@course.destroy
    redirect_to courses_url, notice: 'pet was successfully destroyed.'
	end

	private

	def set_course
		@course = Course.find(params[:id])
	 end

	def course_params
    params.require(:course).permit(:name, :description, :lecture, :code, :video, :category, :difficulty)
  end
end
