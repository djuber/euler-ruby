
def euler1_upto(aNumber)
  (1..aNumber-1).select {|x| x % 3 == 0 or x % 5 == 0 }.inject(0,:+)
end

def euler1
  euler1_upto(1000)
end


