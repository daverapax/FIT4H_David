class Question < ActiveRecord::Base
  belongs_to :project

  validates :name, presence: true
  validates :email, presence: true
  validates :frage, presence: true
end
