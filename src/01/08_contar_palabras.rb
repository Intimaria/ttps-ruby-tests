def contar_palabras(str1, str2)
  str1.scan(/\w+/i).count(str2.downcase)
end
