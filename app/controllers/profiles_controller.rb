class ProfilesController < ApplicationController

  def show
    @posts = Users.find(params[:id])
  end

  def index
    @profiles = User.all
  end
end
