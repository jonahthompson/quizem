class HomeController < ApplicationController
  def index
  	@quiz = Quiz.new
	  	question = @quiz.questions.build
	  	2.times {question.answers.build}
  end
end
