require 'colorizr'

# Should colorize the specified text with the color specified
puts "John".red
puts "Paul".green
puts "George".blue
puts "Ringo".yellow
puts "John".pink
puts "Paul".light_blue
puts "George".white
puts "Ringo".light_grey
puts "John".black

# Should only colorize the text with a colorize method called
puts "Only #{'John'.red} is red"

# Should show a list of color choices avaiable as methods
p "bob".colors

# Should show a list text examples for each of our color choice methods
# String.sample_colors

