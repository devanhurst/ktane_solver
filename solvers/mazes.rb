require 'pry'
@maze_1 = [['*',' ','*',' ','*','X','*',' ','*',' ','*'],
           [' ','X','X','X',' ','X',' ','X','X','X','X'],
           ['#','X','*',' ','*','X','*',' ','*',' ','*'],
           [' ','X',' ','X','X','X','X','X','X','X',' '],
           ['*','X','*',' ','*','X','*',' ','*',' ','#'],
           [' ','X','X','X',' ','X',' ','X','X','X',' '],
           ['*','X','*',' ','*',' ','*','X','*',' ','*'],
           [' ','X','X','X','X','X','X','X','X','X',' '],
           ['*',' ','*',' ','*','X','*',' ','*','X','*'],
           [' ','X','X','X',' ','X',' ','X','X','X',' '],
           ['*',' ','*','X','*',' ','*','X','*',' ','*']]

@maze_2 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_3 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_4 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_5 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_6 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_7 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_8 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_9 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           [' ',' ',' ',' ',' ',' ',' ',' ',' ',' ',' '],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

def traverse(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path = [], previous_direction = nil)
  puts " "
  puts "Direction: " + previous_direction unless previous_direction == nil
  puts "Position: (" + startpoint_x.to_s + "," + startpoint_y.to_s + ")" 
  
  held_path = Array.new(current_path)
  
  if startpoint_x == endpoint_x && startpoint_y == endpoint_y
    output_found_path(current_path)
  end

  case previous_direction
  when 'down'
    move_down(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
    move_left(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
    move_right(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
  when 'up'
    move_up(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
    move_left(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
    move_right(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path)
  when 'left'
    move_up(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_down(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_left(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
  when 'right'
    move_up(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_down(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_right(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
  when nil
    move_up(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_down(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_left(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
    move_right(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, held_path) 
  end
end

def move_up(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path)
  if startpoint_y - 1 < 0 || maze[startpoint_y - 1][startpoint_x] == 'X'
    return false
  else
    previous_direction = "up"
    if ['*', '#'].include?(maze[startpoint_y - 1][startpoint_x])
      current_path.push('up')
    end
    traverse(maze, startpoint_x, startpoint_y - 1, endpoint_x, endpoint_y, current_path, previous_direction)
  end
end

def move_down(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path)
  if startpoint_y + 1 > 10 || maze[startpoint_y + 1][startpoint_x] == 'X'
    return false
  else
    previous_direction = "down"
    if ['*', '#'].include?(maze[startpoint_y + 1][startpoint_x])
      current_path.push('down')
    end
    traverse(maze, startpoint_x, startpoint_y + 1, endpoint_x, endpoint_y, current_path, previous_direction)
  end
end

def move_left(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path)
  if startpoint_x - 1 < 0 || maze[startpoint_y][startpoint_x - 1] == 'X'
    return false
  else
    previous_direction = "left"
    if ['*', '#'].include?(maze[startpoint_y][startpoint_x - 1])
      current_path.push('left')
    end
    traverse(maze, startpoint_x - 1, startpoint_y, endpoint_x, endpoint_y, current_path, previous_direction)
  end
end

def move_right(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path)
  if startpoint_x + 1 > 10 || maze[startpoint_y][startpoint_x + 1] == 'X'
    return false
  else
    previous_direction = "right"
    if ['*', '#'].include?(maze[startpoint_y][startpoint_x + 1])
      current_path.push('right')
    end
    traverse(maze, startpoint_x + 1, startpoint_y, endpoint_x, endpoint_y, current_path, previous_direction)
  end
end

def prompt_user
  puts "Which maze?"
  maze = determine_maze(parse_input(gets.chomp))
  puts "Start? (e.g. '2,3')"
  startpoint = parse_input(gets.chomp)
  puts "End? (e.g. '4,4')"
  endpoint = parse_input(gets.chomp)
end

def parse_input(input)
  x = input.split(',')[0] - 1
  y = input.split(',')[1] - 1
  return [x, y]
end

def output_found_path(path)
  puts path
  @bomb.back_to_menu
end

traverse(@maze_1, 0, 0, 10, 10)
