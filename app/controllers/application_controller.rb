class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  
  
  # private

  #   def configure_permitted_parameters
  #   # devise_parameter_sanitizer.permit(:sign_up, keys: [:name)
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  #   end
private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :email]) # 注目
    end
  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  # end
end

