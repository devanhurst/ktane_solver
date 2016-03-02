require 'pry'

@entered_characters = []
@solutions = {"shell" => 3.505, "halls" => 3.515, "abc" => 9.000}

def solve(entered_characters)
  possible_answers = []
  @solutions.each do |solution|
    @entered_characters.each do |character|
      if solution[0].include?(character) == false
        possible_answers.delete(solution[1])
        break
      end
      possible_answers.push(solution[1])
    end
  end
  if possible_answers.uniq.count == 1
    puts possible_answers.first
    @bomb.back_to_menu
  else
    prompt_user
  end
end

def parse_morse_code(character)
  case character
  when '.-'
    return 'a'
  when '-...'
    return 'b'
  when '-.-.'
    return 'c'
  when '-..'
    return 'd'
  when '.'
    return 'e'
  when '....'
    return 'h'
  when '.-..'
    return 'l'
  when '...'
    return 's'
  else
    puts "Invalid Morse character."
    prompt_user
  end
end

def prompt_user
  puts "Enter Morse character using '.' and '-'. Press Enter when finished."
  @entered_characters.push(parse_morse_code(gets.chomp))
  solve(@entered_characters)
end

prompt_user