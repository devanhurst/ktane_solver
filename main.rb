def prompt_user
  puts "Select a panel."
  puts "0. SERIAL/BATTERY/INDICATOR/PORT CHECK"
  puts "1. Wires"
  puts "2. Button"
  puts "3. Keypads"
  puts "4. Simon Says"
  puts "5. Who's on First"
  puts "6. Memory"
  puts "7. Morse Code"
  puts "8. Complicated Wires"
  puts "9. Wire Sequences"
  puts "10. Mazes"
  puts "11. Passwords"
  puts "12. Knobs"
  run_selected_solver(gets.chomp)
end
def run_selected_solver(selection)
  case selection
  when '0'
  when '1'
  when '2'
  when '3'
  when '4'
  when '5'
  when '6'
  when '7'
  when '8'
  when '9'
  when '10'
  when '11'
  when '12'
  else
    prompt_user
  end
end

prompt_user