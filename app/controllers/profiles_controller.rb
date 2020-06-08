class ProfilesController < ApplicationController

  def show
    @profile = User.find(params[:id])
  end

  def index
    @user_genres = UserGenre.all
    @user_instruments = UserInstrument.all
    @genres = Genre.all
    @instruments = Instrument.all

    if params[:query].present?
      @profiles = User.global_search(params[:query])
    else
      @profiles = User.all
    end
  end

  def follow
    @user = User.find(params[:id])
    @current_user = current_user
    if @current_user.toggle_follow!(@user)
      redirect_to profile_path, notice: "You follow #{@user.username} now"
    else
      redirect_to profile_path, notice: "You unfollowed #{@user.username}"
    end
  end
end
