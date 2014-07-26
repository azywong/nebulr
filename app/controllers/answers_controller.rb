class AnswersController < ApplicationController
  def new
    @answer = Answer.new
  end

  def create
    user = User.find(session[:id])
    @question = Question.find(params["question_id"].to_i)
    @answer = Answer.create(params["answer"])
    @question.answers << @answer
    user.answers << @answer
    redirect_to question_url(@question)
  end
end