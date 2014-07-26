class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    user = User.find(session[:id])
    question = Question.create(params["question"])
    user.questions << question
    redirect_to
  end

  def show
  end
end