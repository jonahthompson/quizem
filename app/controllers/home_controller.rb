class HomeController < ApplicationController
  def index
  	@quiz = Quiz.new
	  	question = @quiz.questions.build
	  	question.answers.build
  end
end
