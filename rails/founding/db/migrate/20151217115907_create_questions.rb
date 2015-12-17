class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.string :email
      t.text :frage
      t.references :project, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
