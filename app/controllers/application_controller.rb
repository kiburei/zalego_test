class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    welcome_index_path
  end
  def after_sign_in_path_for(resource)
    welcome_index_path
  end
  def after_confirmation_path_for(resource_name, resource)
    welcome_index_path
  end


 protected

 def configure_permitted_parameters
    attributes = [:f_name, :l_name, :gender, :language, :username]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
    devise_parameter_sanitizer.permit(:account_update, keys: attributes)
  end
end
