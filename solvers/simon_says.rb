def solve(sequence)
  if sequence == "X"
    @bomb.strikes += 1
    puts "STRIKE ADDED"
    puts "STRIKES: " + @bomb.strikes.to_s
  elsif sequence == ""
    @bomb.back_to_menu
  elsif /[rbgy]+/.match(sequence).to_s == sequence
    solution = determine_current_solution
    sequence.each_char do |char|
      puts solution[char].upcase
    end
  end
  prompt_user
end

def determine_current_solution
  if @bomb.vowel == true
    case @bomb.strikes
    when 0
      return {'r' => 'blue', 'b' => 'red', 'g' => 'yellow', 'y' => 'green'}
    when 1
      return {'r' => 'yellow', 'b' => 'green', 'g' => 'blue', 'y' => 'red'}
    when 2
      return {'r' => 'green', 'b' => 'red', 'g' => 'yellow', 'y' => 'blue'}
    end
  elsif @bomb.vowel == false
    case @bomb.strikes
    when 0
      return {'r' => 'blue', 'b' => 'yellow', 'g' => 'green', 'y' => 'red'}
    when 1
      return {'r' => 'red', 'b' => 'blue', 'g' => 'yellow', 'y' => 'green'}
    when 2
      return {'r' => 'yellow', 'b' => 'green', 'g' => 'blue', 'y' => 'red'}
    end
  end
end

def prompt_user
  @bomb.vowel_check
  print "Input sequence (ENTER X TO ADD A STRIKE, PRESS ENTER TO FINISH): "
  sequence = gets.chomp
  solve(sequence)
end

system "clear" or system "cls"
prompt_user