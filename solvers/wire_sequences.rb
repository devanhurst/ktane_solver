@count_blue = 0
@count_red = 0
@count_black = 0
@red_sequence = ['c', 'b', 'a', 'ac', 'b', 'ac', 'abc', 'ab', 'b']
@blue_sequence = ['b', 'ac', 'b', 'a', 'b', 'bc', 'c', 'ac', 'a']
@black_sequence = ['abc', 'ac', 'b', 'ac', 'b', 'bc', 'ab', 'c', 'c']

def solve(input)
  if input == 'q'
    @bomb.back_to_menu
  else
    input.split(" ").each do |pair|
      case pair[0]
      when 'r'
        if @red_sequence[@count_red].include?(pair[1])
          puts 'RED: ' + "CUT"
        else
          puts 'RED: ' + "DON'T CUT"
        end 
        @count_red += 1
      when 'b'
        if @blue_sequence[@count_blue].include?(pair[1])
          puts 'BLUE: ' + 'CUT'
        else
          puts 'BLUE: ' + "DON'T CUT"
        end
        @count_blue += 1
      when 'k'
        if @black_sequence[@count_black].include?(pair[1])
          puts 'BLACK: ' + 'CUT'
        else
          puts 'BLACK: ' + "DON'T CUT"
        end
        @count_black += 1
      end
    end
    prompt_user
  end
end

def prompt_user
  puts "Enter each color/letter pair, separated by spaces. e.g. 'ra ba kb'"
  solve(gets.chomp)
end

prompt_user