class QuizzesController < ApplicationController
  def index
    @quizzes = Quiz.all
  end

  def new
  end

  def create

    @quiz = current_user.quizzes.new(quiz_params)
    @quiz.save
    redirect_to quizzes_path
  end

  def show
    @quiz = Quiz.find(params[:id])
    @user_quiz = current_user.user_quizzes.create(quiz_id: @quiz.id)
  end

  def edit
  end

  def update
  end

  def destroy
    @quiz = Quiz.find(params[:id]).destroy
    redirect_to quizzes_path
  end

protected

  def param_clean(_params)
    _params.delete_if do |k, v|
      if v.instance_of?(ActionController::Parameters)
        param_clean(v)
      end
      v.empty?
    end
  end


  def user_quiz_params
    params.permit(:id)
  end

  def quiz_params
    params.require(:quiz).permit(:name, :subject, :question, :user_id, 
      questions_attributes: [:content, 
        answers_attributes: [:content, :correct]
    ])
  end

end
