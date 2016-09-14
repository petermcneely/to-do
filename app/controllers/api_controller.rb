class ApiController < ApplicationController
	skip_before_action :verify_authenticity_token

	private
	def authenticated?
		authenticate_or_request_with_http_basic do |email, password|
			resource = User.find_for_database_authentication(email: email)
			if resource.valid_password?(password)
				User.where(email: email)
			end
		end
	end
end
