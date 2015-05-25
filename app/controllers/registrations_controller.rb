class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :password))
    @user.save
    session[:user_id] = @user.id
    redirect_to root_path, notice: 'Thanks for signing up!'
  end
end
