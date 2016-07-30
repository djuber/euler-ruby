require 'test/unit'
require_relative 'euler4'

class PalindromeTest < Test::Unit::TestCase
  def test_single_digit_number_is_palindrome
    self.assert_true(palindrome?(1))
    self.assert_true(palindrome?(2))
    self.assert_true(palindrome?(9))
  end
  def test_ten_is_not_palindrome
    self.assert_false(palindrome?(10))
  end
  def test_nine_thirty_nine_is_palindrome
    self.assert_true(palindrome?(939))
  end
end



class ProductTest < Test::Unit::TestCase
  def test_product_of_1_digit_numbers_has_eightyone_values
    self.assert_equal(81, products_of_n_digit_numbers(1).length)
  end
  def test_product_of_three_digit_numbers_includes_ten_thousand
    self.assert_true(products_of_n_digit_numbers(3).include?(10000))
  end
end


class PalindromicProductsTest < Test::Unit::TestCase
  def test_palindromic_products_of_single_digits_is_only_single_digits
    self.assert_equal((1..9).to_a, palindromic_products(1))
  end
  def test_palindromic_products_of_two_digits_contains_121
    self.assert_true(palindromic_products(2).include?(121))
  end
  def test_palindromic_products_of_three_digits_contains_macguffin
    self.assert_true(palindromic_products(3).include?(906609))
  end
end
