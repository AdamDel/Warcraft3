require_relative 'spec_helper'

# A SeigeEngine should be able to attack other units as well as receive damage
# Later on, other units such as the peasant will be incapable of attacking

describe SeigeEngine do

  before :each do
    @seige_engine = SeigeEngine.new
  end

  describe "#attack!" do
    it "should do deal 100 (AP) damage to the enemy barrack" do
      enemy = Barracks.new
      @seige_engine.attack!(enemy)
      expect(enemy.health_points).to eq(400)
    end
  end

  describe "#damage" do
    it "should reduce the seige_engine's health_points by the attack_power specified" do
      @seige_engine.damage(100)
      expect(@seige_engine.health_points).to eq(300) # starts at 400
    end
  end

   describe "#attack!" do
    it "should not be able to attack a footman" do
      enemy = Footman.new
      @seige_engine.attack!(enemy)
      expect(enemy.health_points).to eq(60)
    end
  end

  describe "#attack!" do
    it "should not be able to attack a peasant" do
      enemy = Peasant.new
      @seige_engine.attack!(enemy)
      expect(enemy.health_points).to eq(35)
    end
  end

end
