require_relative 'bomb'

def main_menu
  puts "Welcome to KTANE AI. Let's defuse some bombs!"
  puts "Enter 'n' to begin a new game."
  puts "Enter 'q' to quit."
  selection = gets.chomp
  case selection
  when 'n'
    @bomb = Bomb.new
    load('./menu.rb')
  when 'q'
    exit
  else
    main_menu
  end
end

system "clear" or system "cls"
main_menu