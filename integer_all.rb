
# taken from pickaxe, lazy 'all' method to enumerate integers:

def Integer.all
  Enumerator.new do |yielder, n:0|
    loop {yielder.yield(n+=1)}
  end.lazy
end
