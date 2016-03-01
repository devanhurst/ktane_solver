system "clear" or system "cls"

@bomb.vowel_check
@bomb.final_digit_check
@bomb.batteries_check
@bomb.indicator_car_check
@bomb.indicator_frk_check
@bomb.parallel_port_check

system "clear" or system "cls"

puts "Vowel: " + @bomb.vowel.to_s
if @bomb.final_digit_odd
  puts "Final digit: ODD"
else
  puts "Final digit: EVEN"
end
puts "Batteries: " + @bomb.battery_count.to_s
puts "CAR: " + @bomb.indicator_car.to_s
puts "FRK: " + @bomb.indicator_frk.to_s
puts "Parallel Port: " + @bomb.parallel_port.to_s
puts "CHECK COMPLETE."

@bomb.back_to_menu