class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@quiz = Quiz.new
  	question = @quiz.questions.build
  	2.times {question.answers.build}
  end
end
