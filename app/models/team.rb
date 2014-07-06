class Team < ActiveRecord::Base
	has_many :players, through: :memberships
	has_many :memberships
end
