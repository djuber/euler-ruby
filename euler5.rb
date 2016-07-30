# gem install multiset if you don't have this
require 'multiset'
require_relative 'prime_factor'

def common_factors(numbers)
  output = Multiset .new []
  numbers.each do |s|
    output = output | Multiset.new(prime_factors(s))
  end
  output.to_a
end


def least_common_multiple(numbers)
  common_factors(numbers).inject(1, :*)
end


def euler5
  least_common_multiple(1..20)
end

# p euler5
