class UserGenresController < ApplicationController
  def new
    @user_genre = UserGenre.new
  end

  def index
    @user_genre = UserGenre.all
  end

  def show
    @user_genres = UserGenre.find(params[:id])
  end

  def create
    @user_genre = UserGenre.new(user_genre_params)
    @user_genre.user = current_user
    @user_genre.genre = Genre.find_by(id: params[:user_genre][:name][:genre_id])

    # include if statement for redirection of new users
    if @user_genre.save
      redirect_to root_path, notice: 'Created new genre.'
    else
      render :new
    end
  end

  private

  def user_genre_params
    params.require(:user_genre).permit({ user_genre_attributes: [:name] })
  end
end
