def solve(word, colour)
  if word == "abort" && colour == "b"
    hold_button
  end

  if word == "detonate"
    @bomb.batteries_check
    if @bomb.battery_count > 1
      press_button
    end
  end

  if colour == "w"
    @bomb.indicator_car_check
    if @bomb.indicator_car == true
      hold_button
    end
  end

  if @bomb.indicator_frk == nil && @bomb.batteries_check == nil
    @bomb.batteries_check
    @bomb.indicator_frk_check
    if @bomb.indicator_frk == true && @bomb.battery_count > 2
      press_button
    end
  elsif @bomb.indicator_frk == true && @bomb.batteries_check == nil
    @bomb.batteries_check
    if @bomb.battery_count > 2
      press_button
    end
  elsif @bomb.indicator_frk == nil && @bomb.battery_count > 2
    @bomb.indicator_frk_check
    if @bomb.indicator_frk == true
      press_button
    end
  elsif @bomb.indicator_frk == true && @bomb.battery_count > 2
    press_button
  end

  if colour == "y"
    hold_button
  end

  if word == "hold" && colour == "r"
    press_button
  else
    hold_button
  end
end

def prompt_user
  word = prompt_for_word
  if @bomb.strike_added?(word)
    prompt_user 
  end
  colour = prompt_for_colour
  if @bomb.strike_added?(colour)
    prompt_user
  end
  solve(word, colour)
end

def prompt_for_word
  puts "What is printed on the button? (Lowercase, please)"
  return gets.chomp
end

def prompt_for_colour
  puts "What colour is the button? ('y', 'b', 'w', 'r')"
  colour = gets.chomp
  if /[ybwr]/.match(colour).to_s != colour
    puts "Invalid colour."
    prompt_for_colour
  else
    return colour
  end
end

def press_button
  puts "PRESS THE BUTTON"
  @bomb.back_to_menu
end

def hold_button
  puts "HOLD THE BUTTON."
  puts "If blue: RELEASE WHEN THE TIMER HAS A 4"
  puts "If yellow: RELEASE WHEN THE TIMER HAS A 5"
  puts "Otherwise: RELEASE WHEN THE TIMER HAS A 1"
  @bomb.back_to_menu
end

system "clear" or system "cls"
prompt_user