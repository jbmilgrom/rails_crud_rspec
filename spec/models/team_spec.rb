require 'rails_helper'

RSpec.describe Team, :type => :model do
  before(:each) do
  	@team_array = [
  		{name: "Lakers", city: "Los Angeles"},
  		{name: "Spurs", city: "San Antonio"},
  		{name: "Knicks", city: "New York"}
  	]

  	# why use this rspec 'assign' method instead of just Team.create!?  
  	# Does .create! not save to the database?
    @team_array.each_with_index do |team, index|
    	@team_array[index] = Team.new(
      	:name => team[:name],
      	:city => team[:city]
    	)
    end

  end

  describe Team do 
  	binding.pry
  	it { should have_many(:players) }
  end

  describe Team do 
	it { should have_many(:contracts) }
  end

  it "should have the same Contract for a given Player as the Player has Contracts for a given Team" do
    
    expect(SubwayLine.all.length).to eq(24)
  end
end
