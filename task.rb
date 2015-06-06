# ファイル名の入力
print "ファイル名を入力して下さい(終了したいときは\"exit\"と入力) > "

while filename = STDIN.gets
  break if filename.chomp! == "exit"
  puts "指定したファイル名 > #{filename}"

  # レシピのIDの入力
  print "IDを入力して下さい(終了したいときは\"exit\"と入力) > "
  while recipe_id = STDIN.gets
	recipe_id = recipe_id.to_i
	puts "指定したID > #{recipe_id}" if recipe_id.to_i > 0

	file = File.new(filename)

	recipes = []
	file.each_line { |line| recipes << line }
	recipe = recipes[recipe_id - 1]
	recipe.nil? ? (puts "nothing") : (puts "#{recipe_id}: #{recipe}")

	# ユーザー名の入力
	print "名前を入力してください > "

	while name = STDIN.gets
	  puts "ユーザー名 > #{name}"
	  break
	end
	break
  end
  break
end
