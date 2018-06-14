class ApplicationController < ActionController::Base

	def after_sign_in_path_for(resource)
	  admintops_top_path
	end
	  protect_from_forgery with: :exception
end
