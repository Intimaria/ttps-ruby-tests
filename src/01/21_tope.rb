def multiplos_de_tres_y_cinco(tope)
  (0..tope).filter { |x| x if (x % 15).zero? }.sum
end
