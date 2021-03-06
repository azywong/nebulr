class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:id] = @user.id
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