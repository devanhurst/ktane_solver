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

  def final_digit_check
    if @final_digit_odd == nil
      puts "WHAT IS THE LAST DIGIT OF THE SERIAL NUMBER?"
      if gets.chomp.to_i % 2 == 0
        @final_digit_odd = false
      else
        @final_digit_odd = true
      end
    end
  end

end
