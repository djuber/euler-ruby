require 'test/unit'
require_relative '../prime_factor'

class FactorTest < Test::Unit::TestCase
  def test_one_is_the_loneliest_number
    self.assert_equal([], prime_factors(1))
  end
  def test_two_is_the_first_prime
    self.assert_equal([2], prime_factors(2))
  end
  def test_eight_is_two_cubed
    self.assert_equal([2,2,2], prime_factors(8))
  end
  def test_seven_times_six_is_fortytwo
    self.assert_equal([2,3,7], prime_factors(42))
  end
  def test_euler_problem_three_example
    #  13195 are 5, 7, 13 and 29.
    self.assert_equal([5,7,13,29], prime_factors(13195))
  end
end
