
# require 'barracks'
# require 'footman'
# require 'peasant'
# require 'seige_engine'

class Unit 
  attr_reader :health_points, :attack_power
  def initialize(health_points, attack_power)
    @health_points = health_points
    @attack_power = attack_power
    @identity = "U"
  end

  def damage(damage)
    if self.dead?
      return false
    else
      @health_points -= damage
    end
  end
  def attack!(enemy)
    
        
    if self.dead?
      return false
    else
      enemy.damage(@attack_power)
    end
 
  end


   def dead?
     if health_points == 0 
      return true
     else
      return false
    end
   end

end
