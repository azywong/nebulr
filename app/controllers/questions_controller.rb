class QuestionsController < ApplicationController
  def index
    @question = QuestionFinder.find
  end

  def new
    @question = Question.new
  end

  def create
    user = User.find(session[:id])
    @question = Question.create(params["question"])
    user.questions << @question
    redirect_to question_url(@question)
  end

  def show
    @question = Question.find(params[:id])
    @answer = Answer.new
  end
end