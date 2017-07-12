class UsersController < ApplicationController

  def index
    if_signed_in?
  end


  def show
    if_signed_in?
  end

  private

  def user_params
  end
end
