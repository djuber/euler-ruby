require 'test/unit'
require_relative '../fibonacci'

class FibonacciTest < Test::Unit::TestCase
  def setup
    @f = Fibonacci.new
  end
  
  def test_fibonacci_starts_with_one_two
    self.assert_equal([1,2], @f.upto(2))
  end

  def test_fibonacci_first_ten
    self.assert_equal([1,2,3,5,8,13,21,34,55,89], @f.upto(100))
  end
end
