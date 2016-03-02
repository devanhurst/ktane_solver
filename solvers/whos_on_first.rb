def solve_1(word)

  if word == 'q'
    @bomb.back_to_menu
  end

  top_left_words = ['ur']
  top_right_words = ['first', 'okay', 'c']
  middle_left_words = ['yes', 'nothing', 'led', 'they are']
  middle_right_words = ['blank', 'read', 'red', 'you', 'your', "you're", 'their']
  bottom_left_words = ['', 'reed', 'leed', "they're"]
  bottom_right_words = ['display', 'says', 'no', 'lead', 'hold on', 'you are', 'there', 'see', 'cee']

  if top_left_words.include?(word)
    prompt_user(2, "top-left")
  elsif top_right_words.include?(word)
    prompt_user(2, "top-right")
  elsif middle_left_words.include?(word)
    prompt_user(2, "middle-left")
  elsif middle_right_words.include?(word)
    prompt_user(2, "middle-right")
  elsif bottom_left_words.include?(word)
    prompt_user(2, "bottom-left")
  elsif bottom_right_words.include?(word)
    prompt_user(2, "bottom-right")
  else
    puts "Invalid word."
    prompt_user(1)
  end
end

def solve_2(word)
  system "clear" or system "cls"
  if word == 'q'
    @bomb.back_to_menu
  end
  solutions = {
    "ready" => ["yes", "okay", "what", "middle", "left", "press", "right", "blank", "ready"],
    "first" => ["left", "okay", "yes", "middle", "no", "right", "nothing", "uhhh", "wait", "ready", "blank", "what", "press", "first"],
    "no" => ["blank", "uhhh", "wait", "first", "what", "ready", "right", "yes", "nothing", "left", "press", "okay", "no"],
    "blank" => ["wait", "right", "okay", "middle", "blank"],
    "nothing" => ["uhhh", "right", "okay", "middle", "yes", "blank", "no", "press", "left", "what", "wait", "first", "nothing"],
    "yes" => ["okay", "right", "uhhh", "middle", "first", "what", "press", "ready", "nothing", "yes"],
    "what" => ["uhhh", "what"],
    "uhhh" => ["ready", "nothing", "left", "what", "okay", "yes", "right", "no", "press", "blank", "uhhh"],
    "left" => ["right", "left"],
    "right" => ["yes", "nothing", "ready", "press", "no", "wait", "what", "right"],
    "middle" => ["blank", "ready", "okay", "what", "nothing", "press", "no", "wait", "left", "middle"],
    "okay" => ["middle", "no", "first", "yes", "uhhh", "nothing", "wait", "okay"],
    "wait" => ["uhhh", "no", "blank", "okay", "yes", "left", "first", "press", "what", "wait"],
    "press" => ["right", "middle", "yes", "ready", "press"],
    "you" => ["sure", "you are", "your", "you're", "next", "uh huh", "ur", "hold", "what?", "you"],
    "you are" => ["your", "next", "like", "uh huh", "what?", "done", "uh uh", "hold", "you", "u", "you're", "sure", "ur", "you are"],
    "your" => ["uh uh", "you are", "uh huh", "your"],
    "you're" => ["you", "you're"],
    "ur" => ["done", "u", "ur"],
    "u" => ["uh huh", "sure", "next", "what?", "you're", "ur", "uh uh", "done", "u"],
    "uh huh" => ["uh huh"],
    "uh uh" => ["ur", "u", "you are", "you", "done", "hold", "uh uh"],
    "what?" => ["you", "hold", "you're", "your", "u", "done", "uh uh", "like", "you are", "uh huh", "ur", "next", "what?"],
    "done" => ["sure", "uh huh", "next", "what?", "your", "ur", "you're", "hold", "like", "you", "u", "you are", "uh uh", "done"],
    "next" => ["what?", "uh huh", "uh uh", "your", "hold", "sure", "next"],
    "hold" => ["you are", "u", "done", "uh uh", "you", "ur", "sure", "what?", "you're", "next", "hold"],
    "sure" => ["you are", "done", "like", "you're", "you", "hold", "uh huh", "ur", "sure"],
    "like" => ["you're", "next", "u", "ur", "hold", "uh uh", "what?", "uh huh", "you", "like"]
  }

  solutions[word].each do |solution_word|
    puts solution_word.upcase
    sleep(0.5)
  end

  prompt_user(1)
end

def prompt_user(round, position="")
  case round
  when 1
    puts "What word is in the display? (Lowercase only, exact. q to exit)"
    solve_1(gets.chomp)
  when 2
    puts "What word appears in the " + position.upcase + " position? (Lowercase only, exact. q to quit.)"
    solve_2(gets.chomp) 
  end
end

system "clear" or system "cls"
prompt_user(1)