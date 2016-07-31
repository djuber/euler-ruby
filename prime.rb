require_relative 'integer_all'


# Array(1..100).select { |x| is_prime?(x)}
# => [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97] 


def is_prime?(aNumber)
  if aNumber < 2
    false
  elsif aNumber == 2
    true
  elsif aNumber.even?
    false
  else
    divisor = 3
    loop do
      if divisor * divisor > aNumber
        return true
      else
        if aNumber % divisor == 0
          return false
        end
      end
      divisor += 2
    end
  end
end


def nth_prime(n)
  Integer.all.select { |i| is_prime?(i) }.first(n).last
end

