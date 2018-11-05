class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index,:show]

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :phone, :street, :city, :state, :postcode, :coutnry])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :phone, :street, :city, :state, :postcode, :coutnry,:password, :current_password])
  end


end
