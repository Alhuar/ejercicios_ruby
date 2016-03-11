puts "Write a sentence:"
str = gets.chomp
alt_str = str.gsub(/[[:punct:]]/, "").split(" ").sort

def sp_sort(arr)
	arr.sort { |a, b| a.downcase <=> b.downcase }
end

print sp_sort(alt_str)



=begin
split_str = alt_str.split(" ")
sorted_str = split_str.sort
=end

