require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "student fields must not be empty" do
    student = Student.new
    student.save
    assert student.invalid?
    assert student.errors[:firstname].any?
    assert student.errors[:lastname].any?
 end
 setup do
   # Create instances for more readable, Rails-like tests
   @leila = students(:leila)
   @mehrdad = students(:mehrdad)
 end

 test "show fullname in custom method" do
   assert_equal "#{@leila.firstname} #{@leila.lastname}", @leila.name
 end
end
