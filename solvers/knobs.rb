def solve(input)
  case input
  when 'ddbdub', 'udbnbd'
    puts "Knob position: UP"
  when 'dbbdnb', 'udunud'
    puts "Knob position: DOWN"
  when 'dnndbd', 'nnndbn'
    puts "Knob position: LEFT"
  when 'bdbubu', 'bdbudn'
    puts "Knob position: RIGHT"
  when 'q'
    @bomb.back_to_menu
  else
    puts 'Invalid input, try again.'
    prompt_user
  end
  @bomb.back_to_menu
end

def prompt_user
  puts "Enter the light sequence. (Down: 'd', Up: 'u', Both: 'b', None: 'n')"
  puts "q to quit"
  solve(gets.chomp)
end

system "cls" or system "clear"
prompt_user