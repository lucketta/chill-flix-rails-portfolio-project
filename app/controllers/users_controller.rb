class UsersController < ApplicationController


  def show
    @user = User.find_by(email: params[:user][:email])
    raise @user.shows.inspect
  end
end
