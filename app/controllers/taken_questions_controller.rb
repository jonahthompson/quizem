class TakenQuestionsController < ApplicationController
  def create
  	params[:responses][:taken_question].each do |key, response|
  		@taken_question = TakenQuestion.new(response: response[:response], user_quiz_id: params[:user_quiz_id], question_id: response[:question_id])
  		@taken_question.save!
  	end
  	user_quiz = @taken_question.user_quiz
  	redirect_to user_quiz_path(user_quiz)
  end

  def destroy
  	@taken_question.destroy
  end

  protected

  def taken_question_params
  	params.require(:taken_question).permit(taken_questions_attributes: [:response])
  end
end
