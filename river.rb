class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def name
     return @name
  end

  def fish
    return @fish
  end

  def add_a_fish(fish)
    @fish << fish
  end

  def lose_a_fish()
    @fish.pop
  end

  def river_fish_count()
    return @fish.length
  end
  
end
