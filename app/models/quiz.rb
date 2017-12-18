class Quiz < ApplicationRecord
	has_many :user_quizzes
  has_many :users, through: :user_quizzes

	accepts_nested_attributes_for :question, allow_destroy: true
end
