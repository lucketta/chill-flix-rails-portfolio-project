class UsersController < ApplicationController

  def index
    if_signed_in?
  end

  def show
    if_signed_in?
    @programs = Program.where(user_id: current_user.id, favorite: true)

  end
end
