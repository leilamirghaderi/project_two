class Student < ApplicationRecord
  has_many :reflections
  validates :uid, uniqueness: true
  validates :firstname, :lastname, presence: true, on: :update
  def name
   "#{firstname} #{lastname}"
  end
end
