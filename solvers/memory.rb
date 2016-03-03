require 'pry'

@labels = {}
@positions = {}
@round = 1

def solve(response)
  if response == "q"
    @bomb.back_to_menu
  elsif response == "r" || @bomb.strike_added?(response)
    system "clear" or system "cls"
    @round = 1
    puts "MODULE RESET"
    prompt_user
  elsif /\d{5}/.match(response).to_s == response
    display_digit = response[0]
    case @round
    when 1
      case display_digit.to_i
      when 1
        position = 2
        label = response[position]
      when 2
        position = 2
        label = response[position]
      when 3
        position = 3
        label = response[position]
      when 4
        position = 4
        label = response[position]
      end
    when 2
      case display_digit.to_i
      when 1
        label = '4'
        position = response.index('4')
      when 2
        position = @positions['1']
        label = response[position]
      when 3
        position = 1
        label = response[position]
      when 4
        position = @positions['1']
        label = response[position]
      end
    when 3
      case display_digit.to_i
      when 1
        label = @labels['2']
        position = response[label]
      when 2
        label = @labels['1']
        position = response[label]
      when 3
        position = 3
        label = response[position]
      when 4
        label = '4'
        position = response.index('4')
      end
    when 4
      case display_digit.to_i
      when 1
        position = @positions['1']
        label = response[position]
      when 2
        position = 1
        label = response[position]
      when 3
        position = @positions['2']
        label = response[position]
      when 4
        position = @positions['2']
        label = response[position]
      end
    when 5
      case display_digit.to_i
      when 1
        label = @labels['1']
      when 2
        label = @labels['2']
      when 3
        label = @labels['4']
      when 4
        label = @labels['3']
      end  
    end
    @labels[@round.to_s] = label
    @positions[@round.to_s] = position
    puts "PRESS " + label
    sleep(1)
    if @round < 5
      @round += 1
      prompt_user
    else
      @bomb.back_to_menu
    end
  else
    puts "Invalid input. Try again."
    sleep(0.5)
    system "clear" or system "cls"
    prompt_user
  end
end

def prompt_user
  puts "Type the digit in the display, followed by the four button labels from left to right."
  puts "(e.g. display is 3, labels are 4132 = <<34132>>)"
  puts "(Enter 'r' to reset back to round 1. Enter 'q' to quit.)"
  solve(gets.chomp)
end

prompt_user