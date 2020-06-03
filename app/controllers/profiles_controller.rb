class ProfilesController < ApplicationController

  def show
    @posts = Users.find(params[:id])
  end

  def index
    if params[:query].present?
      @profiles = User.global_search(params[:query])
    else
      @profiles = User.all
    end
  end

end
