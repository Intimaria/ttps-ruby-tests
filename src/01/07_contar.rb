def contar(str1, str2)
  str2.strip.empty? ? 0 : str1.downcase.scan(str2.downcase).size
end
