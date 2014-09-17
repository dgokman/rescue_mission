require 'pry'
class QuestionsController < ApplicationController

  def index
    @questions_time = Question.order(created_at: :desc)
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.create(params.require(:question).permit(:question, :description))
    render "new"
  end

end
