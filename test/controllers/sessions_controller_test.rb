require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should redirect to posts URL on login" do
    post '/auth/github/callback', params: OmniAuth.config.mock_auth[:github]
    assert_redirected_to reflections_url
  end
  test "first-time login should create a new Student record" do
    assert_difference('Student.count') do
      post '/auth/github/callback', params: OmniAuth.config.add_mock(:github, {uid: '12121'})
    end
  end
end
