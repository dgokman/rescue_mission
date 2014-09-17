require 'pry'
class QuestionsController < ApplicationController
  attr_reader :questions
  def index
  end

  def new
    @questions = Question.new
  end

  def create
    @questions = Question.create(params.require(:question).permit(:question, :description))
    render "new"
  end

end
