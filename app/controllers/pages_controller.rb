class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @user = current_user
  end

  def profile
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number)
  end
end
