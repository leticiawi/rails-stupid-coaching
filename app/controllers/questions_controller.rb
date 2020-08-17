class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:ask]
    if @question.include?('?')
      @coach = 'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      @coach = 'Great!'
    else
      @coach = 'I don`t care, get dressed and do to work!'
    end
  end
end
