def lowercase(file)
  File.open(file).each_line do |line|
      puts line.split(" ").map{|word| word.downcase}.join(" ")
  end
end


lowercase('04_lowercase.txt')
