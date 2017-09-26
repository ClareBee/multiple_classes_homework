require 'minitest/autorun'
require 'minitest/rg'

require_relative '../bear'
require_relative '../fish'
require_relative '../river'


class TestBear

  def setup()
    @yogi = Bear.new("Yogi")
    @nemo = Fish.new("Nemo")
    @nelly = Fish.new("Nelly")
    @amazon = River.new("Amazon", [@nemo, @nelly])

  end

  def test_take_fish()
    result = @yogi.take_fish(@amazon)
    assert_equal(1, result)
    assert_equal(0, @amazon.lose_a_fish)
  end

  def test_roar()
    result = @yogi.roar
    assert_equal("roar", result)
  end
  
  def test_fish_count_in_tummy()
    @yogi.take_fish(@amazon)
    @yogi.take_fish(@amazon)

    result = @yogi.fish_count_in_tummy
    assert_equal(2, result)
  end

end
