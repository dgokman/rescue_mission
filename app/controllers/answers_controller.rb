require 'pry'
class AnswersController < ApplicationController


  def create
    # binding.pry
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)

      if @answer.save
        redirect_to '/'
      else
        @answers = @question.answers
        render 'questions/show'
      end

  end

private
    def answer_params
      params.require(:answer).permit(:answer)
    end

end
