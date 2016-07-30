require 'test/unit'
require_relative '../euler1'

class EulerOneTest < Test::Unit::TestCase
  def test_sum_of_multiples_below_10_is_23
    self.assert_equal(23, euler1_upto(10))
  end
end



