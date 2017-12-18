class QuizzesController < ApplicationController
  def index
  end

  def new
  end

  def create
    @quiz = Quiz.new(quiz_params)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

protected

  def quiz_params
    params.require(:quiz).permit(:name, :subject, :question, :user_id, question_attributes: [:id, :content])
  end

end
