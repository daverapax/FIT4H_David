class Registration < ActiveRecord::Base
  belongs_to :event
  HEARED_OPTIONS = ['Newsletter', 'Twitter', 'Websearch', 'Other']
  validates :heared, inclusion: { in: HEARED_OPTIONS}
  validates :name, presence: true
end
