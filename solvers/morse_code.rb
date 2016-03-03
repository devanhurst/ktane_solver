require 'pry'

@entered_characters = []
@solutions = {"shell" => "3.505 MHz", "halls" => "3.515 MHz", "slick" => "3.522 MHz",
              "trick" => "3.532 MHz", "boxes" => "3.535 MHz", "leaks" => "3.542 MHz",
              "strobe" => "3.545 MHz", "bistro" => "3.552 MHz", "flick" => "3.555 MHz",
              "bombs" => "3.565 MHz", "break" => "3.572 MHz", "brick" => "3.575 MHz",
              "steak" => "3.582 MHz", "sting" => "3.592 MHz", "vector" => "3.595 MHz",
              "beats" => "3.600 MHz"}

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
  when 'r'
    @entered_characters = []
    puts "RESET"
    prompt_user
  when 'q'
    @bomb.back_to_menu
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
  when '..-.'
    return 'f'
  when '--.'
    return 'g'
  when '....'
    return 'h'
  when '..'
    return 'i'
  when '.---'
    return 'j'
  when '-.-'
    return 'k'
  when '.-..'
    return 'l'
  when '--'
    return 'm'
  when '-.'
    return 'n'
  when '---'
    return 'o'
  when '.--.'
    return 'p'
  when '--.-'
    return 'q'
  when '.-.'
    return 'r'
  when '...'
    return 's'
  when '-'
    return 't'
  when '..-'
    return 'u'
  when '...-'
    return 'v'
  when '.--'
    return 'w'
  when '-..-'
    return 'x'
  when '-.--'
    return 'y'
  when '--..'
    return 'z'
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