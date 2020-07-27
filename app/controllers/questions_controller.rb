class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = display(@question)
  end

  def display(answer)
    if answer == "I am going to work"
      return "Great!"
    elsif answer.chars.last == "?"
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
end
