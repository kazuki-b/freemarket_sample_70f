class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :user_image, :family_name, :first_name, :family_name_kana, :first_name_kana, :birth_year, :birth_month, :birth_day,])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  end
end
