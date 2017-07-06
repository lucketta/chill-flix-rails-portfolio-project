class ShowsController < ApplicationController

  def index
      @shows = Show.all
  end

  def show
    @show = Show.find(params[:id])
  end

  def new
    @show = Show.new
    @show.genres.build
  end

  def create
    @show = current_user.shows.create(show_params)

    if @show.valid?
      redirect_to user_show_path(current_user, @show.id)
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    redirect_to @show
  end

  def destroy
    current_user.shows.delete(Show.find(params[:id]))
    redirect_to user_path(current_user)
  end

  def add_show
    Show.add_to_shows(current_user, params[:id])
    redirect_to user_path(current_user)
  end

  private

  def show_params
    params.require(:show).permit(:name,:air_date,:air_time,:description, :network_id, genre_ids:[], genres_attributes:[:name] )
  end
end
