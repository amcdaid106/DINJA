class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_link_to_profile
  include ActionView::Helpers::UrlHelper


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
  end

  def default_url_options
  { host: ENV['HOST'] || 'localhost:3000' }
  end

  def set_link_to_profile
    if user_signed_in?
      if current_user.has_user_completed_food_preferences? == false
        @your_profile = (link_to 'your profile', edit_user_path(current_user))
        flash[:notice] = "Don't forget to complete #{ @your_profile } so that you only see meals that match your food preferences.".html_safe
      end
    end
  end

end
