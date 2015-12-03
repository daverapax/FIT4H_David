class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.decimal :target_pledge

      t.timestamps null: false
    end
  end
end
