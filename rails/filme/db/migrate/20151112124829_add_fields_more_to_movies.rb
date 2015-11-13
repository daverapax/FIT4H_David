class AddFieldsMoreToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :web, :string
    add_column :movies, :pledging, :date
  end
end
