require 'minitest/autorun'
require 'minitest/rg'

require_relative '../river'
require_relative '../fish'

class TestRiver < MiniTest::Test

  def setup()
    @amazon = River.new("Amazon", [@nemo, @nelly])
    @nemo = Fish.new("Nemo")
    @nemo = Fish.new("Nelly")
    # @amazon.add_a_fish(@nemo)
  end


  def test_lose_fish()
    @amazon.lose_a_fish()
    actual = @amazon.fish.count
    assert_equal(1, actual)
  end

  def test_river_fish_count
    actual = @amazon.river_fish_count
    assert_equal(2, actual)
  end
  
end
