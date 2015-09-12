class Dessert
#getter and setter for name and calories
  attr_accessor :name 
  attr_accessor :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if self.calories<200
      return TRUE
    else
      return FALSE
    end
  end
  def delicious?
    return TRUE
  end
end

class JellyBean < Dessert
  #getter and setter for flavor
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    super(flavor + " jelly bean", 5)
  end
  def delicious?
    if @flavor == "licorice"
      return FALSE
    else
      return TRUE
    end
  end
end
