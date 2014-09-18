require 'pry'
class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
   #binding.pry
    @question = Question.find(params[:id])
    @answer = Answer.new

  end

  def new
    @question = Question.new
  end


  def create
    @question = Question.create(question_params)
    if @question.errors.any?
      render "new"
    else
      @question.save
      redirect_to "/questions"
    end

  end

  def edit
    @question = Question.find(params[:id])
  end

  def update

    @question = Question.find(params[:id])

    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit'
    end
  end

  private

  def question_params
    params.require(:question).permit(:question, :description)
  end


end
