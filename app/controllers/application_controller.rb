class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception


  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || user_path(resource)
  end

  def if_signed_in?
    if !signed_in?
      redirect_to chillflix_path
    end
  end

  
end
