class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    coach_answer
  end

  private

  def coach_answer
    @answer = if @question == 'I am going to work right now!'
                'Good job.'
              elsif @question[-1] == '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
