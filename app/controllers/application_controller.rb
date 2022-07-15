class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameter, if: :devise_controller?
  
  protected
  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email])
  end
end
