class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@quizzes = Quiz.all
  end
end
