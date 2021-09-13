def longitud(array)
  a = []
  array.map { |x| x == nil ? a << 0 : a << x.length  }
  a
end
