class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(user_params[:id])
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.save
      render json: @user
    else
      render json: @user.errors
    end
  end

  private

  def user_params
    params.require(:user).permit(:id, :name)
  end

end
