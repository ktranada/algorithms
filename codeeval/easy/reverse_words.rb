

def reverse_words(file)
    File.open(file).each_line do |line|
        next if line.nil?
        words = line.split(" ")
        new_string = words.reverse.join(" ")
        puts new_string
    end
end


reverse_words("sample_file.txt")
