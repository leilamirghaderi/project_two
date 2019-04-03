require 'test_helper'

class ReflectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reflection = reflections(:one)
  end

  test "should get index" do
    get reflections_url
    assert_response :success
  end

  test "should get new" do
    get new_reflection_url
    assert_response :success
  end

  test "should create reflection" do
    assert_difference('Reflection.count') do
      post reflections_url, params: { reflection: { week: @reflection.week, title: @reflection.title, reaction: @reflection.reaction, student_name: @reflection.student.name } }
    end

    assert_redirected_to reflection_url(Reflection.last)
  end

  test "should show reflection" do
    get reflection_url(@reflection)
    assert_response :success
  end

  test "should get edit" do
    get edit_reflection_url(@reflection)
    assert_response :success
  end

  test "should update reflection" do
    patch reflection_url(@reflection), params: { reflection: { week: @reflection.week, title: @reflection.title, reaction: @reflection.reaction, student_name: @reflection.student.name } }
    assert_redirected_to reflection_url(@reflection)
  end

  test "should destroy reflection" do
    assert_difference('Reflection.count', -1) do
      delete reflection_url(@reflection)
    end

    assert_redirected_to reflections_url
  end
end
