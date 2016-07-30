require 'test/unit'
require_relative '../euler5'

class PrimeFactorizationTest < Test::Unit::TestCase
  def test_two_is_prime
    self.assert_equal([2], prime_factors(2))
  end
  def test_six_is_composite
    self.assert_equal([2,3], prime_factors(6))
  end
end

class CommonFactorsTest < Test::Unit::TestCase
  def test_two_and_six_share_factors
    self.assert_equal([2,3], common_factors([2,6]))
  end
  def test_four_and_sixteen_share_factors
    self.assert_equal([2,2,2,2], common_factors([4,16]))
  end
end

class EulerFiveTest < Test::Unit::TestCase
  def test_one_to_ten
    self.assert_equal(2520, least_common_multiple(1..10))
  end
end

