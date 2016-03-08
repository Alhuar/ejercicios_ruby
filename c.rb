for num in 1..20
	result = ""
	num_st = num.to_s
  
  if num % 3 != 0 && num % 5 != 0 && num_st[0] != "1"
	result = num
	end
	if num % 3 == 0 && num % 5 == 0
	result << "FizzBuzz"
	elsif num % 3 == 0
  		result << "Fizz"
  	
	elsif num % 5 == 0
		result << "Buzz"
	else 
		result = num_st
	end


if num_st[0] == "1"
		result << "Bang"
	end

puts result
end