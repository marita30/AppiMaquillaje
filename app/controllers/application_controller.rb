class ApplicationController < ActionController::Base

#  Para agregar un nuevo campo en devise en la database
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


# Para redireccionar despues del sign in a la ruta types

  def after_sign_in_path_for(resource_or_scope)
    types_path
  end

#  Para agregar un nuevo campo en devise en la database

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])

  end
end
