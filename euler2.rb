require_relative 'fibonacci'


def euler_problem_2
  f = Fibonacci.new
  f.upto(4000000).select { |x| x.even? }.inject(0, :+)
end

p euler_problem_2
