class Student < ApplicationRecord
  has_many :reflections
  validates :firstname, :lastname, presence: true
  def name
   "#{firstname} #{lastname}"
  end
end
