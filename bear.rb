class Bear

  def initialize(name)
    @name = name
    @tummy = []
  end

  def name
    return @name
  end

  def tummy
    return @tummy
  end

  # def take_fish(river)
  #   fish = river.lose_a_fish()
  #   @tummy << fish
  # end

  def take_fish(river)
      meal = river.length -= 1
      @tummy.push(meal)
    end

  def roar
    return "roar"
  end

  def fish_count_in_tummy
    @tummy.length
  end

end
