class CreateUserQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :user_quizzes do |t|
      t.string :name
      t.string :subject
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
