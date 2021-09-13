def longitud(array)
  a = []
  array.map { |x| a << (x.nil? ? 0 : x.length) }
  a
end
