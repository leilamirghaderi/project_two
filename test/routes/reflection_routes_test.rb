require 'test_helper'

class ReflectionsRoutesTest < ActionDispatch::IntegrationTest
  setup do
    @reflection = reflections(:one)
  end

  test "id parameter should only be digits" do
    get "/reflections/#{@reflection.id}"
    assert_response :success
    assert_raise ActionController::RoutingError do
      get "/reflections/abc123"
    end
  end
end
