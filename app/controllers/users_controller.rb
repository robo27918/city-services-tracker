class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit destroy]
  
  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice:"User created successfully!"
    else
      puts @user.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end
  
  def destroy
    @user.destroy
    redirect_to users_path,notice: "User deleted successfully"
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
