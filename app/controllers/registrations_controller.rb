class RegistrationsController < Devise::RegistrationsController

#  before_action :one_user_registered?, only: [:new, :create]


  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end



  def one_user_registered?
    if ((User.count == 1) & (user_signed_in?))
      redirect_to root_path
    elsif User.count == 1
      redirect_to new_user_session_path
    end  
  end

end
