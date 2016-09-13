class User < ActiveRecord::Base
	has_one :list
	validates :name, presence: true
end
