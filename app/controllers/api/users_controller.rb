class Api::UsersController < ApiController
	before_action :authenticated?

	def index
		render json: User.all.to_ary, each_serializer: UserSerializer
	end
end