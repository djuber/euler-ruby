def get_int_from_file(aFileName)
  a = ""
  File.open(aFileName) { |f|
    a += f.read.scan(/[0-9]/).join
  }
  a.to_i

end


def n_adjacent_digits(aNumber, n)
  aString = aNumber.to_s
  limit = aString.size - n
  output = []
  (0..(limit)).each do |i|
    output.push(aString[i..(i+n-1)].to_i)
  end
  output
end


def digit_product(aNumber)
  aNumber.to_s.chars.each.map { |x| x.to_i } .inject(1, :*)
end

def max_digit_product(aNumber, digits)
  n_adjacent_digits(aNumber, digits).map { |x| digit_product(x)}.max
end

def euler8
  max_digit_product(get_int_from_file('euler8.txt'), 13)
end


