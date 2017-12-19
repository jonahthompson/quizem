class UserQuiz < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  has_many :taken_questions, dependent: :destroy
end
