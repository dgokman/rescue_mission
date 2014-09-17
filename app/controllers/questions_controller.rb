require 'pry'
class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show

    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def new
    @question = Question.new
  end


  def create
    @question = Question.create(params.require(:question).permit(:question, :description))
    if @question.errors.any?
      render "new"
    else
      @question.save
      redirect_to "/questions"
    end

  end


end
