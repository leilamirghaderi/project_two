class Reflection < ApplicationRecord
  belongs_to :student
  validates :reaction, :title, :week, :student_id, presence: true
  validates :week,
  numericality: { integer_only: true, greater_than_or_equal_to: 1 }

  def student_name=(name)
    name_parts = name.split(' ')
    self.student = Student.find_or_create_by(firstname: name_parts[0], lastname: name_parts[1])
  end

  def student_name
    self.student ? self.student.name : nil
  end
end
