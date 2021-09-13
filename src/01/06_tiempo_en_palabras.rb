require 'time'

def formato(casi, futuro, minutos, tm)
  str = ""; hr = ""
  str << "casi " if casi 
  str << (tm.strftime("%l").to_i == 1 ? "es la " : "son las ")
  hr = futuro ? (tm.strftime("%l").to_i + 1).to_s : tm.strftime("%l").to_i.to_s
  str << hr << minutos
  str.capitalize
end

def tiempo_en_palabras(tm)
  case tm.min
  when 0..10
    formato(false, false, " en punto", tm)
  when 11..20
    formato(false, false, " y cuarto", tm)
  when 21..34
    formato(false, false, " y media", tm)
  when 35..44
    formato(false, true, " menos veinticinco", tm)
  when 45..55
    formato(false, true, " menos cuarto", tm)
  when 56..59
    formato(true, true, "", tm)
  end
end
