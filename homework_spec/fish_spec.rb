require ('minitest/autorun')
require ('minitest/rg')

require_relative ('../fish')

class TestFish < MiniTest::Test

  def setup
    @nemo = Fish.new("Nemo")
  end

  def test_name
    result = @nemo.name
    assert_equal("Nemo", result)
  end

end
