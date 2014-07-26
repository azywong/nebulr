class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new(params)
    if user.save
      redirect_to root_path
    else
      render :new
    end
  end

  def questions
    @user = User.find(session[:id])
    @questions = @user.questions
  end
end