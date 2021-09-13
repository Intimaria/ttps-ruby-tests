def notacion_hexadecimal(array)
  '#' << array.map { |x| x.to_s(16) }.join.upcase
end

def notacion_entera(arr)
  arr.reduce { |sum, n| sum + n * 256**arr.find_index(n) }
end
