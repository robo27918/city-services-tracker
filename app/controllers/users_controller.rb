class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    #used for strong parameters
    #security feature in Rails that prevents
    #malicious users from injecting unauthorized 
    #data
    params.require(:user).permit(:id,:name,:email,:phone)
  end

end
