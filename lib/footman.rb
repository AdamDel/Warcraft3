# http://classic.battle.net/war3/human/units/footman.shtml

require_relative 'unit'
require_relative 'barracks'

class Footman < Unit
  #attr_accessor :health_points, :attack_power, :identity 
  def initialize
    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
    @health_points = 60
    @attack_power = 10
   
  end

  def attack!(enemy)
    if enemy.instance_of? Barracks
      @damage_done = (@attack_power/2).ceil
    else
      @damage_done = @attack_power
    end
    enemy.damage(@damage_done)
  end

  def damage(damage)
    
    @health_points -= damage
    
  end
end


