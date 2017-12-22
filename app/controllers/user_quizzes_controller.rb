class UserQuizzesController < ApplicationController
  def index
    
  end

  def new
  end

  def create
  end

  def show
    @user_quiz = UserQuiz.find(params[:id])
    @quiz = @user_quiz.quiz
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
