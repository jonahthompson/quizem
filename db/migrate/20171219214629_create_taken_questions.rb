class CreateTakenQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :taken_questions do |t|
      t.references :user_quiz, foreign_key: true
      t.references :question, foreign_key: true
      t.string :response

      t.timestamps
    end
  end
end
