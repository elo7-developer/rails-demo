require 'test_helper'

class GithubControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_template 'index'
  end

  test "should get repos" do
    stub_request(:get, 'https://api.github.com/users/fsabe/repos')
    get :repos, {:user => 'fsabe'}
    assert_response :success
    assert_template 'repos'
  end

  test "should get commits" do
    stub_request(:get, 'https://api.github.com/repos/fsabe/rails-demo/commits')
    get :commits, {:owner => 'fsabe', :repo => 'rails-demo'}
    assert_response :success
    assert_template 'commits'
  end

end
