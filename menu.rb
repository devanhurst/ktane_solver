def prompt_user
  system "clear" or system "cls"
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
  puts "13. END GAME"
  run_selected_solver(gets.chomp)
end

def run_selected_solver(selection)
  case selection
  when '0'
    load('./solvers/check.rb')
  when '1'
    load('./solvers/wires.rb')
  when '2'
    load('./solvers/button.rb')
  when '3'
    load('./solvers/keypads.rb')
  when '4'
    load('./solvers/simon_says.rb')
  when '5'
    load('./solvers/whos_on_first.rb')
  when '6'
    load('./solvers/memory.rb')
  when '7'
    load('./solvers/morse_code.rb')
  when '8'
    load('./solvers/complicated_wires.rb')
  when '9'
    load('./solvers/wire_sequences.rb')
  when '10'
    load('./solvers/mazes.rb')
  when '11'
    load('./solvers/passwords.rb')
  when '12'
    load('./solvers/knobs.rb')
  when '13'
    load('./main.rb')
  else
    prompt_user
  end
end

prompt_user