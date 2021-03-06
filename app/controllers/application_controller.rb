class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :update_sanitized_params, if: :devise_controller?

	def update_sanitized_params
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :user_id)}
  	devise_parameter_sanitizer.for(:account_control) {|u| u.permit(:first_name, :last_name, :profile_name, :email, :password, :password_confirmation, :user_id)}
		
	end
	
  
end
