class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << [:state_id]
  end

  protect_from_forgery with: :exception

  #This is important shit
  before_action do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

end
