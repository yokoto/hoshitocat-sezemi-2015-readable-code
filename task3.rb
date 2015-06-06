filename = "./recipe-date.txt"

file = File.new(filename)

recipes = []
file.each_line { |line| recipes << line }

recipes.each_with_index do |recipe, id| 
  puts "#{id + 1}: #{recipe}"
end
