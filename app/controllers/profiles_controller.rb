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
end
