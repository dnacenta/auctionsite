class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    unless @user
      render json: {error: 'User not found'}, status: 404
      return
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
  end

  def destroy
    @user = User.find(params[:id])
    unless @user
      render json: {error: 'User not found'}, status: 404
      return
    end
    @user.destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
