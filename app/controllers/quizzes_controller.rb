class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
  end

  def create
    @quiz = current_user.quizzes.new(quiz_params)
    @quiz.save
    redirect_to @quiz
  end

  def show
    @quiz = Quiz.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

protected

  def quiz_params
    params.require(:quiz).permit(:name, :subject, :question, :user_id, 
      questions_attributes: [:content, 
        answers_attributes: [:content, :correct]
    ])
  end

end
