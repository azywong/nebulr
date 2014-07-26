class UserController < ApplicationController
  def questions
    @questions = Question.where('user_id = ?', session[:id])
    p @questions
  end
end