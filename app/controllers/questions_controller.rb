require 'pry'
class QuestionsController < ApplicationController

  def index
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.create(params.require(:question).permit(:question, :description))
    if @questions.errors.any?
      render "new"
    else
      @questions.save
      redirect_to "/questions"
    end
  end

end
