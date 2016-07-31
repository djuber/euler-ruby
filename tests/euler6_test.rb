require 'test/unit'
require_relative '../euler6'

class EulerSixTest < Test::Unit::TestCase
  def test_sum_of_squares_of_first_ten
    self.assert_equal(385, sum_of_squares(1..10))
  end
  def test_square_of_sum_of_first_ten
    self.assert_equal(3025, square_of_sum(1..10))
  end
  def difference_of_square_of_sum_and_sum_of_square
    self.assert_equal( 2640, euler6_difference(1..10))
  end
end
