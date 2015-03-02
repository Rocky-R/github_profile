class ProfilesController < ApplicationController
  def repositories
    @repo_list = Profile.new.repos
  end
end
