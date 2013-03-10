require 'test_helper'

class GithubControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get repos" do
    get :repos
    assert_response :success
  end

  test "should get commits" do
    get :commits
    assert_response :success
  end

end
