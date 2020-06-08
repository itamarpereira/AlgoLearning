class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :dashboard]

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
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
