class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach(@question)
  end

  def coach(question)
    question = question.strip
    if question.downcase == 'i am going to work'
      return 'Great!'
    elsif question.end_with?('?')
      return 'Silly question, get dressed and go to work!'
    else
      return 'I don\'t care, get dressed and go to work!'
    end
  end
end
