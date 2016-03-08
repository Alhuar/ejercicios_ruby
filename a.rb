result == ""
for num in 15..30 
	num_st = num.to_s
	if num % 3 == 0
		result == "Fizz"
end
	if  num_st[0] == 1
		puts result << "Bang"
end
end
