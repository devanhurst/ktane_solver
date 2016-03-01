require_relative 'bomb'

def main_menu
  system "clear" or system "cls"
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
    puts "Invalid input."
    sleep 0.5

    main_menu
  end
end

main_menu