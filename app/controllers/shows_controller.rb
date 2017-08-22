class ShowsController < ApplicationController

  def index
    @shows = Show.all
    @favorite_show = Show.find_by(name: policy_scope(Show).keys[0])

    respond_to do |format|
     format.html { render :index }
     format.json { render json: @shows}
   end
  end

  def show
    @show = Show.find_by(id: params[:id])
    if current_user.present?
      @program = Program.find_by(user_id: current_user.id, show_id: @show.id)
    end

    @review = @show.reviews.build
    if !@show
      redirect_to chillflix_path
    end
    response = {show: @show, genres: @show.genres, program: @program, reviews: @show.reviews}

    respond_to do |format|
     format.html { render :show }
     format.json { render json: response, layout: false}
   end
  end

  def new
    if_signed_in?
    @show = Show.new
    @show.genres.build
  end

  def create
    if_signed_in?
    @show = current_user.shows.create(show_params)
    if @show.valid?
      render :show
    else
      render :new
    end
  end

  def edit
    if_signed_in?
    @show = Show.find(params[:id])
  end

  def update
    if_signed_in?
    @show = Show.find(params[:id])
    @show.update(show_params)
  end

  def destroy
    if_signed_in?
    current_user.shows.delete(Show.find(params[:id]))
    redirect_to user_path(current_user)
  end

  def add_show
    if_signed_in?
    Show.add_to_shows(current_user, params[:id])
    redirect_to user_path(current_user)
  end

  private

  def show_params
    params.require(:show).permit(:name,:air_date,:air_time,:description, :network_id, genre_ids:[], genres_attributes:[:name],review_ids:[], reviews_attributes:[:content])
  end
end
