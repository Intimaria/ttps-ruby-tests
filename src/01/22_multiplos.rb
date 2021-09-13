def multiplos_de(arr, tope)
  n = arr.reduce(:lcm)
  (0..tope).filter { |x| x if (x % n).zero? }.sum
end
