require 'pry'

@column = 1
@passwords = ['about', 'after', 'again', 'below', 'could',
              'every', 'first', 'found', 'great', 'house',
              'large', 'learn', 'never', 'other', 'place',
              'plant', 'point', 'right', 'small', 'sound',
              'spell', 'still', 'study', 'their', 'there',
              'these', 'thing', 'think', 'three', 'water',
              'where', 'which', 'world', 'would', 'write']

@possibilities = Array.new(@passwords)

def solve(column, input)
  if input == "quit"
    @bomb.back_to_menu
  end

  @possibilities.each do |password|
    if input.include?(password[column-1]) == false
      @possibilities[@possibilities.index(password)] = 0
    end
  end
  @possibilities.delete(0)
  
  if @possibilities.count == 1
    system 'cls' or system 'clear'
    puts @possibilities.first.upcase
    @bomb.back_to_menu
  elsif @column == 5
    @column = 1
    @possibilities = Array.new(@passwords)
    system 'cls' or system 'clear'
    puts "NO WORD FOUND. TRY AGAIN."
    prompt_user
  else
    @column += 1
    prompt_user
  end

end

def prompt_user
  puts "Enter all characters in column " + @column.to_s + " without spaces."
  puts "'quit' to exit"
  solve(@column, gets.chomp)
end

system 'cls' or system 'clear'
prompt_user