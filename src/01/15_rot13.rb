def convert13(start, finish)
  arr = (start..finish).to_a
  transform = arr.rotate(13)
  arr.zip(transform).to_h
end

def rot13(string)
  code = convert13("a", "z").merge(convert13("A", "Z"))
  string.chars.map { |c| code.fetch(c, c) }.join
end
