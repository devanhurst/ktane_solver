class Bomb

  attr_accessor :vowel
  attr_accessor :final_digit_odd
  attr_accessor :battery_count
  attr_accessor :indicator_car
  attr_accessor :indicator_frk
  attr_accessor :parallel_port

  def initialize
    @vowel = nil
    @final_digit_odd = nil
    @battery_count = nil
    @indicator_car = nil
    @indicator_frk = nil
    @parallel_port = nil
  end

  def vowel_check
    if @vowel == nil
      puts "Is there a vowel in the serial number? (y/n)"
      response = gets.chomp
      if response == "y"
        @vowel = true
      elsif response == "n"
        @vowel = false
      else
        puts "Invalid input."
        vowel_check
      end
    end
  end

  def final_digit_check
    if @final_digit_odd == nil
      puts "What is the last digit of the serial number?"
      if gets.chomp.to_i % 2 == 0
        @final_digit_odd = false
      else
        @final_digit_odd = true
      end
    end
  end

  def batteries_check
    if @battery_count == nil
      puts "How many batteries are on the bomb?"
      @battery_count = gets.chomp.to_i
    end
  end

  def indicator_car_check
    if @indicator_car == nil
      puts "Is there a lit CAR indicator? (y/n)"
      response = gets.chomp
      if response == "y"
        @indicator_car = true
      elsif response == "n"
        @indicator_car = false
      else
        puts "Invalid input."
        indicator_car_check
      end
    end
  end

  def indicator_frk_check
    if @indicator_frk == nil
      puts "Is there a lit FRK indicator? (y/n)"
      response = gets.chomp
      if response == "y"
        @indicator_frk = true
      elsif response == "n"
        @indicator_frk = false
      else
        puts "Invalid input."
        indicator_frk_check
      end
    end
  end

  def parallel_port_check
    if @parallel_port == nil
      puts "Is there a parallel port on the bomb? (y/n)"
      response = gets.chomp
      if response == "y"
        @parallel_port = true
      elsif response == "n"
        @parallel_port = false
      else
        puts "Invalid input."
        parallel_port_check
      end
    end
  end

  def back_to_menu
    puts "Press enter to return to menu."
    if gets.chomp == ""
      load('./menu.rb')
    else
      back_to_menu
    end
  end

end
