require 'test/unit'

require_relative '../prime.rb'

class PrimeTest < Test::Unit::TestCase
  def test_two_is_prime
    self.assert_true(is_prime?(2))
  end
  def test_three_is_prime
    self.assert_true(is_prime?(3))
  end
  def test_evens_are_not_prime
    self.assert_false(is_prime?(4))
    self.assert_false(is_prime?(8))
    self.assert_false(is_prime?(10002))
  end
  def test_multiples_of_five_are_not_prime
    self.assert_false(is_prime?(35))
    self.assert_false(is_prime?(125))
  end
  def test_small_numbers_are_not_prime
    self.assert_false([0,1,-2,-3,-6,-11].any? { |x| is_prime?(x) })
  end
  def test_all_primes_below_twenty
    self.assert_equal([2,3,5,7,11,13,17,19], Array(1..20).select {|x| is_prime?(x) })
  end

  def test_nth_prime
    self.assert_equal(13, nth_prime(6))
  end
end
