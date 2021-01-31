class UsersController < ApplicationController
  before_action :find_user, only: [:show, :edit, :update]

  def show
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
      end
  end

private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:first_name, :city)
  end
end
