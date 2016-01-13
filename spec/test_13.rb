require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(30, 5)
  end

  describe "#attack!" do
    it "a dead unit cannot attack" do
      # now check to see if one is trainable
      # can jump right to the test since Unit start off with enough gold and food to train multiple footmen
      enemy = Unit.new(30, 5)
      expect(@unit).to receive(:health_points).and_return(0)
      expect(@unit.attack!(enemy)).to be_falsey
    end

    it "a dead unit cannot be attacked" do
      # now check to see if one is trainable
      # can jump right to the test since Unit start off with enough gold and food to train multiple footmen
      enemy = Unit.new(0, 5)
      expect(@unit.attack!(enemy)).to be_falsey
    end

  end


end