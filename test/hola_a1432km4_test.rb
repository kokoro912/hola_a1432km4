require 'test_helper'

class HolaA1432km3Test < Minitest::Test
  def setup
    @main = ::HolaA1432km3::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::HolaA1432km3::VERSION
  end

  def test_odd?
    assert @main.odd?(1), '1 is odd'
    refute @main.odd?(2), '2 is not odd'
    assert @main.odd?(3), '3 is odd'
    assert @main.odd?(4), '4 is not odd'
  end
end
