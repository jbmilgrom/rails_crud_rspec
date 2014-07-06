require 'rails_helper'

RSpec.describe Team, :type => :model do
  before(:each) do
  	@team_array = [
  		{name: "Lakers", city: "Los Angeles"},
  		{name: "Spurs", city: "San Antonio"},
  		{name: "Knicks", city: "New York"}
  	]
    team_array.each_with_index do |team, index|
    	@team_array[index] = assign(:team, Team.create!(
      	:name => team[:name],
      	:city => team[:city]
    	))
    end
    #TEST THIS !!!!!!!
  end
  it { should have_many(:players) }
  it { should have_many(:contracts) }

  it "should have the same Contract for a given Player as the Player has Contracts for a given Team" do
    
    expect(SubwayLine.all.length).to eq(24)
  end
end
