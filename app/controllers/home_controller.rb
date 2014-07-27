class HomeController < ApplicationController
  def index
    @user = User.find(session[:id])
  end
end