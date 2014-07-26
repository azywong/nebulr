class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user.password == params[:password]
      session[:id] = user.id
      puts "logged in successfully"
    else
      puts "not logged in successfully"
    end
      redirect_to root_path
  end

  def exit
    session[:id] = nil
    redirect_to root_path
  end
end