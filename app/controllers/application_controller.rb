class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


	private
		def check_admin!
			authenticate_user!
		unless current_user.admin?
			redirect_to root_path, alert: "No tienes acceso"
		end
	end
end
