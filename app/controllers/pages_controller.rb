class PagesController < ApplicationController
  def home
  end

  def friendlist
    @users = User.all
    @following = current_user.followees(User)
    @followers = current_user.followers(User)
  end

  def follow_two
    @user = User.find(params[:id])
    @current_user = current_user
    if @current_user.toggle_follow!(@user)
      redirect_to friendlist_path, notice: "You follow #{@user.username} now"
    else
      redirect_to friendlist_path, notice: "You unfollowed #{@user.username}"
    end
  end
end
