class Player < ActiveRecord::Base
	has_many :teams, through: :contracts
	has_many :contracts
end
