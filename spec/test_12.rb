require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(30, 5)
  end

  describe "#dead?" do
    it "returns false if the unit is not dead" do
      # now check to see if one is trainable
      # can jump right to the test since Unit start off with enough gold and food to train multiple footmen
      expect(@unit.dead?).to be_falsey
    end

    it "returns true if the unit is dead" do
      # Make the Unit believe it only has 1 food item left, even though it starts with 80
      # This is done by overwriting the `food` getter method
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.dead?).to be_truthy
    end

    # it "returns false if there isn't enough gold" do
    #   # Make the Unit believe it only has 134 gold left, even though it starts with 1000
    #   # This is done by overwriting the `gold` getter method
    #   expect(@unit).to receive(:gold).and_return(134)
    #   expect(@unit.dead?).to be_falsey
    # end
  end


end