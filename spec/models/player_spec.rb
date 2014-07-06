require 'rails_helper'

RSpec.describe Player, :type => :model do
  it { should have_many(:teams) }
  it { should have_many(:contracts) }
end
