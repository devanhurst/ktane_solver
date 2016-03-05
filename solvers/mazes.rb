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

@maze_2 = [['*',' ','*',' ','*','X','*',' ','*',' ','*'],
           ['X','X',' ','X','X','X',' ','X',' ','X','X'],
           ['*',' ','*','X','*',' ','*','X','#',' ','*'],
           [' ','X','X','X',' ','X','X','X','X','X',' '],
           ['*','X','*',' ','*','X','*',' ','*',' ','*'],
           [' ','X',' ','X','X','X',' ','X','X','X',' '],
           ['*',' ','#','X','*',' ','*','X','*','X','*'],
           [' ','X','X','X',' ','X','X','X',' ','X',' '],
           ['*','X','*','X','*','X','*',' ','*','X','*'],
           [' ','X',' ','X',' ','X',' ','X','X','X',' '],
           ['*','X','*',' ','*','X','*',' ','*',' ','*']]

@maze_3 = [['*',' ','*',' ','*','X','*','X','*',' ','*'],
           [' ','X','X','X',' ','X',' ','X',' ','X',' '],
           ['*','X','*','X','*','X','*',' ','*','X','*'],
           ['X','X',' ','X',' ','X','X','X','X','X',' '],
           ['*',' ','*','X','*','X','*',' ','*','X','*'],
           [' ','X',' ','X',' ','X',' ','X',' ','X',' '],
           ['*','X','*','X','*','X','#','X','*','X','#'],
           [' ','X',' ','X',' ','X',' ','X',' ','X',' '],
           ['*','X','*',' ','*','X','*','X','*','X','*'],
           [' ','X','X','X','X','X',' ','X',' ','X',' '],
           ['*',' ','*',' ','*',' ','*','X','*',' ','*']]

@maze_4 = [['#',' ','*','X','*',' ','*',' ','*',' ','*'],
           [' ','X',' ','X','X','X','X','X','X','X',' '],
           ['*','X','*','X','*',' ','*',' ','*',' ','*'],
           [' ','X',' ',' ',' ','X','X','X','X','X',' '],
           ['*','X','*',' ','*','X','*',' ','*','X','*'],
           [' ','X','X','X','X','X',' ','X','X','X',' '],
           ['#','X','*',' ','*',' ','*',' ','*',' ','*'],
           [' ','X','X','X','X','X','X','X','X','X',' '],
           ['*',' ','*',' ','*',' ','*',' ','*','X','*'],
           [' ','X','X','X','X','X','X','X',' ','X',' '],
           ['*',' ','*',' ','*','X','*',' ','*','X','*']]

@maze_5 = [['*',' ','*',' ','*',' ','*',' ','*',' ','*'],
           ['X','X','X','X','X','X','X','X',' ','X',' '],
           ['*',' ','*',' ','*',' ','*',' ','*','X','*'],
           [' ','X','X','X','X','X',' ','X','X','X','X'],
           ['*',' ','*','X','*',' ','*','X','#',' ','*'],
           [' ','X',' ','X','X','X','X','X',' ','X',' '],
           ['*','X','*',' ','*',' ','*','X','*','X','*'],
           [' ','X','X','X','X','X',' ','X','X','X',' '],
           ['*','X','*',' ','*',' ','*',' ','*','X','*'],
           [' ','X',' ','X','X','X','X','X','X','X',' '],
           ['*','X','*',' ','*',' ','#',' ','*',' ','*']]

@maze_6 = [['*','X','*',' ','*','X','*',' ','#',' ','*'],
           [' ','X',' ','X',' ','X','X','X',' ','X',' '],
           ['*','X','*','X','*','X','*',' ','*','X','*'],
           [' ','X',' ','X',' ','X',' ','X','X','X',' '],
           ['*',' ','*','X','*','X','*','X','*',' ','*'],
           [' ','X','X','X','X','X',' ','X',' ','X','X'],
           ['*',' ','*','X','*',' ','*','X','*','X','*'],
           ['X','X',' ','X',' ','X',' ','X',' ','X',' '],
           ['*',' ','*','X','#','X','*','X','*',' ','*'],
           [' ','X','X','X','X','X',' ','X','X','X',' '],
           ['*',' ','*',' ','*',' ','*','X','*',' ','*']]

@maze_7 = [['*',' ','#',' ','*',' ','*','X','*',' ','*'],
           [' ','X','X','X','X','X',' ','X',' ','X',' '],
           ['*','X','*',' ','*','X','*',' ','*','X','*'],
           [' ','X',' ','X','X','X','X','X','X','X',' '],
           ['*',' ','*','X','*',' ','*','X','*',' ','*'],
           ['X','X','X','X',' ','X','X','X',' ','X','X'],
           ['*',' ','*','X','*',' ','*',' ','*','X','*'],
           [' ','X',' ','X',' ','X','X','X','X','X',' '],
           ['*','X','*','X','*',' ','*',' ','*','X','*'],
           [' ','X','X','X','X','X','X','X',' ','X',' '],
           ['*',' ','#',' ','*',' ','*',' ','*',' ','*']]

@maze_8 = [['*','X','*',' ','*',' ','#','X','*',' ','*'],
           [' ','X',' ','X','X','X',' ','X',' ','X',' '],
           ['*',' ','*',' ','*','X','*',' ','*','X','*'],
           [' ','X','X','X','X','X','X','X','X','X',' '],
           ['*','X','*',' ','*',' ','*',' ','*','X','*'],
           [' ','X',' ','X','X','X','X','X',' ','X',' '],
           ['*','X','*',' ','#','X','*',' ','*',' ','*'],
           [' ','X','X','X',' ','X','X','X','X','X','X'],
           ['*','X','*','X','*',' ','*',' ','*',' ','*'],
           [' ','X',' ','X','X','X','X','X','X','X','X'],
           ['*',' ','*',' ','*',' ','*',' ','*',' ','*']]

@maze_9 = [['*','X','*',' ','*',' ','*',' ','*',' ','*'],
           [' ','X',' ','X','X','X','X','X',' ','X',' '],
           ['*','X','*','X','#',' ','*','X','*','X','*'],
           [' ','X',' ','X',' ','X','X','X',' ','X',' '],
           ['*',' ','*',' ','*','X','*',' ','*','X','*'],
           [' ','X','X','X','X','X',' ','X','X','X',' '],
           ['*','X','*','X','*',' ','*','X','*',' ','*'],
           [' ','X',' ','X',' ','X','X','X','X','X',' '],
           ['#','X','*','X','*','X','*',' ','*','X','*'],
           [' ','X',' ','X',' ','X',' ','X',' ','X','X'],
           ['*',' ','*','X','*',' ','*','X','*',' ','*']]

@mazes = [@maze_1, @maze_2, @maze_3,
          @maze_4, @maze_5, @maze_6,
          @maze_7, @maze_8, @maze_9]

def traverse(maze, startpoint_x, startpoint_y, endpoint_x, endpoint_y, current_path = [], previous_direction = nil)

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
  puts "Circle One?"
  circle_one = parse_input(gets.chomp)
  puts "Circle Two?"
  circle_two = parse_input(gets.chomp)
  maze = determine_maze(circle_one, circle_two)
  puts "Start? (e.g. '2,3')"
  startpoint = parse_input(gets.chomp)
  puts "End? (e.g. '4,4')"
  endpoint = parse_input(gets.chomp)
  traverse(maze, startpoint[0], startpoint[1], endpoint[0], endpoint[1])
end

def parse_input(input)
  x = input.split(',')[0].to_i - 1
  y = input.split(',')[1].to_i - 1
  return [x*2, y*2]
end

def determine_maze(circle_one, circle_two)
  @mazes.each do |maze|
    if maze[circle_one[1]][circle_one[0]] == '#' && maze[circle_two[1]][circle_two[0]] == '#'
      return maze
    end
  end
end

def output_found_path(path)
  system 'cls' or system 'clear'
  count = 0
  path.each do |direction|
    print direction.upcase + " "
    count += 1
    if count % 3 == 0
      puts ""
      sleep(2)
    end
  end
  puts ""
  @bomb.back_to_menu
end

prompt_user
