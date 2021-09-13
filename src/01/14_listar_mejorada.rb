def listar_mejorada(hash, pegamento = ": ")
  hash.map.with_index do |(clave, valor), i|
    "#{i + 1}. #{clave}#{pegamento}#{valor}"
  end.join("\n")
end
