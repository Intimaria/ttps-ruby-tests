def listar(hash)
  hash.map.with_index do |(clave, valor), i|
    "#{i + 1}. #{clave}: #{valor}"
  end.join("\n")
end
