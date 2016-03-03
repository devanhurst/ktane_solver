def cut?(combination)
  case combination.split('').sort.join
  when 'x', 's', 'rs'
    return true
  when 'l', 'bs', 'blrs'
    return false
  when 'r', 'b', 'br', 'blr'
    !@bomb.final_digit_odd ? (return true) : (return false)
  when 'ls', 'lr', 'lrs'
    @bomb.battery_count >= 2 ? (return true) : (return false)
  when 'brs', 'bl', 'bls'
    @bomb.parallel_port ? (return true) : (return false)
  when 'q'
    @bomb.back_to_menu
  else
    puts 'Invalid combination.'
    prompt_user
  end
end

def solve(input)
  input.split(' ').each do |combination|
    cut?(combination) ? (puts "CUT") : (puts "DON'T CUT")
  end
  @bomb.back_to_menu
end

def prompt_user
  puts "Enter all combinations, separated by spaces. Enter q to quit."
  puts "Blue = 'b', Red = 'r', Star = 's', LED = 'l', NONE = 'x'"
  puts "e.g. 'brs bl rl x rb blrs'"
  solve(gets.chomp)
end

@bomb.final_digit_check
@bomb.batteries_check
@bomb.parallel_port_check
prompt_user