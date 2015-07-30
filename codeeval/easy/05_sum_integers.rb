def sum_ints(file)
  sum = 0
  File.open(file).each_line do |line|
    sum += line.chomp.to_i
  end
  puts sum
end

sum_ints('05_sum_int.txt')
