class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :website, :string
    add_column :projects, :ttl, :date
  end
end
