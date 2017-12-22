class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy
  has_many :taken_questions, dependent: :destroy

  accepts_nested_attributes_for :answers, allow_destroy: true

  validates_presence_of :content, :answers
end
