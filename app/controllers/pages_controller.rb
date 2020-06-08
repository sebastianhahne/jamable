class PagesController < ApplicationController
  def home
  end

  def friendlist
    @users = User.all
    @following = current_user.followees(User)
    @followers = current_user.followers(User)
  end
end
