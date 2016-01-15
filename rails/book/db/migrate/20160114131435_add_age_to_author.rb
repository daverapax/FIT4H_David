class AddAgeToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :gebrutstag, :date
  end
end
