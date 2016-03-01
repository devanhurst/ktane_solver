def solve(wire_string)
  if /[rbykw]{3,6}/.match(wire_string).to_s != wire_string
    puts "Invalid input."
    prompt_user
  end

  wires = wire_string.split("")
  case wires.length
  when 3
    if wires.include?("r")
      puts "CUT THE SECOND WIRE"
    elsif wires.last == "w"
      puts "CUT THE LAST WIRE"
    elsif wires.count("b") > 1
      puts "CUT THE LAST BLUE WIRE"
    else
      puts "CUT THE LAST WIRE"
    end
    back_to_menu
  when 4
    @bomb.final_digit_check
    if wires.count("r") > 1 && @bomb.last_digit_odd == true
      puts "CUT THE LAST WIRE"
    elsif wires.last == "y" && wires.count("r") == 0
      puts "CUT THE FIRST WIRE"
    elsif wires.count("b") == 1
      puts "CUT THE FIRST WIRE"
    elsif wires.count("y") > 1
      puts "CUT THE LAST WIRE"
    else
      puts "CUT THE SECOND WIRE"
    end
    back_to_menu
  when 5
    @bomb.final_digit_check
    if wires.last == "k" && @last_digit_odd == true
      puts "CUT THE FOURTH WIRE"
    elsif wires.count("r") == 1 && wires.count("y") > 1
      puts "CUT THE FIRST WIRE"
    elsif wires.count("k") == 0
      puts "CUT THE SECOND WIRE"
    else
      puts "CUT THE FIRST WIRE"
    end
    back_to_menu
  when 6
    @bomb.final_digit_check
    if wires.count("y") == 0 && @bomb.last_digit_odd == true
      puts "CUT THE THIRD WIRE"
    elsif wires.count("y") == 1 && wires.count("y") > 1
      puts "CUT THE FOURTH WIRE"
    elsif wires.count("r") == 0
      puts "CUT THE LAST WIRE"
    else
      puts "CUT THE FOURTH WIRE"
    end
    back_to_menu
  end
end

def back_to_menu
  puts "Press enter to return to menu."
  if gets.chomp == ""
    load('./menu.rb')
  else
    back_to_menu
  end
end

def prompt_user
  puts "Enter wires as a string of colors."
  puts "e.g. 'rbrywk', (BLUE = b, BLACK = k)"
  solve(gets.chomp)
end

prompt_user