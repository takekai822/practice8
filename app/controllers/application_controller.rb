class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameter, if: :devise_controller?
  
  def after_user_sign_in_path_for(resource)
    root_path
  end
  
  def after_user_sign_out_path_for(resource)
    root_path
  end
  
  protected
  def configure_permitted_parameter
    devise_parameter_sanitizer.permit(:sign_up, keys:[:email])
  end
end
