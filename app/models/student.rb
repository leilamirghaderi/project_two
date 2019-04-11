class Student < ApplicationRecord
  has_many :reflections
  validates :uid, uniqueness: true
  # validates :firstname, :lastname, presence: true
  def name
   "#{firstname} #{lastname}"
  end
end
