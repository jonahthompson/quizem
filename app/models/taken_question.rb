class TakenQuestion < ApplicationRecord
  belongs_to :user_quiz
  belongs_to :question
end
