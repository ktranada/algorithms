def multiples(file)
  File.open(file).each_line do |line|
    numbers = line.chomp.split(",")
    x, n, i = numbers[0].to_i, numbers[1].to_i, 1
    until n >= x # 8 >= 13
      n = numbers[1].to_i * i
      i += 1
    end
    puts n
  end
end

multiples('m_o_m.txt')
