class Quiz < ApplicationRecord
	belongs_to :user
  has_many :users, through: :user_quizzes
  has_many :questions, dependent: :destroy

	accepts_nested_attributes_for :questions, allow_destroy: true

	validates_presence_of :name, :subject
end
