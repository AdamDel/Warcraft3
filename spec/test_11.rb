require_relative 'spec_helper'

describe Footman do

  before :each do
    @footman = Footman.new
  end

  describe "#damage" do
    it "should reduce the barrack's health_points by half the attack_power specified" do
      enemy = Barracks.new
      @footman.attack!(enemy)
      expect(enemy.health_points).to eq(495) # HP started at 100 but just got hit by 12 (see subject)
    end
  end


end