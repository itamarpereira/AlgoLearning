class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :dashboard, :courses_done]

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Changes successfully done.'
    else
      render :edit
    end
  end

  def dashboard
    authorize @user
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:email, :username, :password, :photo)
  end
end
