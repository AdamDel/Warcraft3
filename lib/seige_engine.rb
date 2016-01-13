require 'unit'


class SeigeEngine < Unit
  def initialize
    @attack_power = 50
    @health_points = 400
  end

  # def damage(damage)
  #   @health_points -= (damage/2).ceil
  # end

  def attack!(enemy)
    if enemy.instance_of? Footman 
      return false
    end
    if enemy.instance_of? Peasant
      return false
    end
    if self.dead?
      return false
    else
      damage_done = 2 * @attack_power
      enemy.damage(damage_done)
    end
  end
end
