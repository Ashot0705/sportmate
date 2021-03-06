class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :username, :birthday, :gender, :favorite_sport, :avatar, :email, :password)}
  	devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email, :password, :remember_me)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:first_name, :last_name, :username, :birthday, :gender, :favorite_sport, :avatar, :email, :password)}
  end

end
