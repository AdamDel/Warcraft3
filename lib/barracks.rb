require 'unit'
require 'footman'

#require 'peasant'

class Barracks < Unit
  attr_accessor :gold, :food, :health_points, :lumber
  

  def initialize
    @gold = 1000
    @food = 80
    @health_points = 500
    @lumber = 500
  end

  # def damage(damage)
  #   @health_points -= (damage/2).ceil
  # end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end  
  end

  def can_train_footman?
    
    if self.gold < 135
      return false
    end

    if self.food < 2
      return false
    end

    if self.gold > 134 && self.food > 1
      return true
    end

    # if @gold > 134 && @food >= 2
    #   return true
    # else
    #   return false
    # end

  end

  def train_peasant
    if can_train_peasant?

      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def can_train_peasant?
 
   return gold > 89 && food >= 5
  end

  def buy_seage_engine
    if can_buy_seage_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
      SeigeEngine.new
    end

  end

  def can_buy_seage_engine?
    if self.gold < 200
      return false
    end

    if self.food < 3
      return false
    end

    if self.gold > 199 && self.food > 2
      return true
    end
  end

end
