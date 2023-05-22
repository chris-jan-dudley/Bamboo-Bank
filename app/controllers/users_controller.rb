# frozen_string_literal: true

class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.balance = 100
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Successfully created account!'
    else
      render :new, alert: 'Account creation failed!'
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
