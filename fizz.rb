(1..20).each do |num|
num_st = num.to_s
result = ""
  	
	if num % 3 == 0
  		result = result + "Fizz"
  	end
  	if num % 5 == 0
		result = result + "Buzz"
	end
	if num % 3 != 0 && num % 5 != 0 && num_st[0] != "1"
	result = num
	end


if num_st[0] == "1"
		result << "Bang"
	end
puts result
end