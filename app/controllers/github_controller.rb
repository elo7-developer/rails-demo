class GithubController < ApplicationController
  def index
  end

  def repos
    @user = params[:user]
    @repos = Github.repos(@user)
  end

  def commits
  end
end
