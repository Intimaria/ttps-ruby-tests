require 'time'

def formato(casi, futuro, minutos, tiempo)
  str = ""
  str << "casi " if casi
  str << (tiempo.strftime("%l").to_i == 1 ? "es la " : "son las ")
  str << (futuro ? (tiempo.strftime("%l").to_i + 1).to_s : tiempo.strftime("%l").to_i.to_s)
  str << minutos
  str.capitalize
end

def tiempo_en_palabras(tiempo)
  case tiempo.min
  when 0..10
    formato(false, false, " en punto", tiempo)
  when 11..20
    formato(false, false, " y cuarto", tiempo)
  when 21..34
    formato(false, false, " y media", tiempo)
  when 35..44
    formato(false, true, " menos veinticinco", tiempo)
  when 45..55
    formato(false, true, " menos cuarto", tiempo)
  when 56..59
    formato(true, true, "", tiempo)
  end
end
