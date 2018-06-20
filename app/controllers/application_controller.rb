class ApplicationController < ActionController::Base
	def after_sign_in_path_for(resource)

	  case resource
      when User
        new_destination_path
      when Admin
        admintops_top_path
      end
	end
	def after_sign_out_path_for(resource)
	 	root_path
	end
		protect_from_forgery with: :exception
		

end
