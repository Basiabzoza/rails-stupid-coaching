
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "I cannot hear you!"
    elsif @question =~ /i am going to work/i
      @answer = "great!"
    elsif @question.ends_with? ("?")
      @answer = "Silly question, get dressed and go to work"
    else
      @answer = "I do not care, get dressed anf go to work!"

    end

  end
end
