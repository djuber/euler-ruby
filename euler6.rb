def sum_of_squares(numbers)
  numbers.inject(0)  { |x, y|  x + y*y } 
end

def square_of_sum(numbers)
  a = numbers.inject(0, :+)
  a * a
end


def euler6_difference(numbers)
  square_of_sum(numbers) - sum_of_squares(numbers)
end

def euler6
  euler6_difference(1..100)
end

# p euler6
