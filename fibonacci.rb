class Fibonacci
  # c supports rollback, a and b are used to generate the sequence
  def initialize
    @a = 1
    @b = 1
    @c = 0
  end

  # if c is not zero, we can roll back one step. 
  def rollback
    if @c > 0
      @b, @a = @a, @c
      @c = 0
      true
    else
      false
    end
  end
    
  def next_one
    @a, @b, @c = @b, @a+@b, @a
    @a
  end

  def upto(limit)
    arr = []
    n = next_one
    until (n > limit) do
      arr.push(n)
      n = next_one
    end
    rollback
    arr
  end
end


def euler_problem_2
  f = Fibonacci.new
  f.upto(4000000).select { |x| x.even? }.inject(0, :+)
end

p euler_problem_2
