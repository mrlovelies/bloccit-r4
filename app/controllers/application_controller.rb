class ApplicationController < ActionController::Base
	include Pundit

	rescue_from Pundit::NotAuthorizedError do |exception|
		redirect_to root_url, alert: exception.message
	end
	protect_from_forgery with: :exception

end
