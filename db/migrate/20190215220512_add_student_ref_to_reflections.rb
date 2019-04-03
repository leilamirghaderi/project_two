class AddStudentRefToReflections < ActiveRecord::Migration[5.2]
  def change
    add_reference :reflections, :student, foreign_key: true
  end
end
