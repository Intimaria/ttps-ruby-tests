def convert(start, finish, num)
  arr = (start..finish).to_a
  arr.zip(arr.rotate(num)).to_h
end

def rotated_alphabet(num)
  convert("a", "z", num).merge(convert("A", "Z", num))
end

def rot(string, num)
  code = rotated_alphabet(num)
  string.chars.map { |c| code.fetch(c, c) }.join
end
