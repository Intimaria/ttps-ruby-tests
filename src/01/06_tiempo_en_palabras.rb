require 'time'

def formato(casi, futuro, minutos, tiempo)
  str = ""
  str << "casi " if casi
  hora = casi || futuro ? (tiempo.hour + 1) : tiempo.hour
  hora -= 12 if tiempo.strftime("%p") == "PM"
  hora = 0 if (tiempo.strftime("%p") == "PM") & (hora == 12)
  str << (hora == 1 ? "es la " : "son las ")
  str << hora.to_s << minutos
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
