def string_reverso(str)
  str.reverse
end

def string_sin_espacio(str)
  str.delete("\s\t\n")
end

def string_a_arreglo_ascii(str)
  str.chars.map(&:ord)
end

def string_reemplaza_vocal(str)
  str
    .gsub(/a/i, "4")
    .gsub(/e/i, "3")
    .gsub(/i/i, "1")
    .gsub(/o/i, "0")
    .gsub(/u/i, "6")
end
