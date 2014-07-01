class UsersController < ApplicationController
  def index
    @users = User.order(created_at: :desc).limit(20)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path, notice: "Saved"
    else
      render :new
    end
  end

  protected
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :photo)
    end
end
