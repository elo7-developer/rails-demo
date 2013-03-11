class GithubController < ApplicationController
  def index
  end

  def repos
    @user = params[:user]
    @repos = Github.repos(@user)
  end

  def commits
    @owner = params[:owner]
    @repo = params[:repo]
    @commits = Github.commits(@owner, @repo)
  end
end
