class UsersController < ApplicationController

  def index
    @users = User.all
    @user = User.new
    render "index"
  end
  
  def create
    User.create(user_params)
    redirect_to root_path
  end

private

  def user_params
    params.require(:user).permit(:avatar,:name)
  end

end