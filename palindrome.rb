

def palindrome?(aNumber)
  aNumber.to_s == aNumber.to_s.reverse
end

def products_of_n_digit_numbers(n)
  range = (10 ** (n-1))..(10 ** n - 1)
  range=range.to_a
  (range .product range) .map { |a| a[0] * a[1] }
end


def palindromic_products(number_of_digits)
  products_of_n_digit_numbers(number_of_digits).uniq.keep_if { |n| palindrome?(n) }
end
