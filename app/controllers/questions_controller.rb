class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @input = params[:answer]
    @answer = ""

    if @input == 'I am going to work right now!'
     @answer = 'Great!'
    elsif @input.include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
