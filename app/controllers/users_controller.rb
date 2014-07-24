class UsersController < ApplicationController

  def index
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #redirect_to thanks
    else
    end
  end

  def user_params
    params.require(:user).permit(:email)
  end
end
