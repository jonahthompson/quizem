class AddReferenceToQuizzes < ActiveRecord::Migration[5.1]
  def change
    add_reference :quizzes, :user, foreign_key: true
  end
end
