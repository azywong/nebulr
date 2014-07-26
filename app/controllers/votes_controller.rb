class VotesController < ApplicationController
  def new
    @vote = Vote.new
  end

  def create
    @user = User.find(session[:id])
    @answer = Answer.find(params[:answer_id])
    @question = Question.find(params[:question_id])
    vote = Vote.create(value: params[:value])
    @user.votes << vote
    @answer.votes << vote
    redirect_to question_path(@question)
  end
end