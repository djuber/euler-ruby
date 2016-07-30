
# basically, trial division. recursive list concatenation. In the worst case, runs in sqrt(n)/2 time.
# accumulate prime factors of aNumber in ascending order, without uniqueness (8 = [2,2,2], etc).
def prime_factors(aNumber)
  if aNumber < 2
    []
  elsif aNumber.even?
      [2].concat prime_factors(aNumber/2)
  else
    divisor = 3
    loop do
      if aNumber % divisor == 0
        return [divisor].concat prime_factors(aNumber/divisor)
      end
      divisor += 2
      if divisor * divisor > aNumber
        return [aNumber]
      end
    end
  end
end




