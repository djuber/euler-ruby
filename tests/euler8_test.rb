require 'test/unit'
require_relative '../euler8'

class AdjacentDigitsTest < Test::Unit::TestCase
  def test_n_digits_of_n_digits_is_singleton
    aNumber=12345
    self.assert_equal([12345], n_adjacent_digits(aNumber, 5))
  end
  def test_1_digits_of_5_digits_is_explode
    aNumber=12345
    self.assert_equal([1,2,3,4,5], n_adjacent_digits(aNumber, 1))
  end
  def test_triples_of_nine
    aNumber=123456789
    self.assert_true(n_adjacent_digits(aNumber, 3).include? 123)
    self.assert_true(n_adjacent_digits(aNumber, 3).include? 789)
  end
end
                      
