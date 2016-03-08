1.upto(100) do |num| 
result = ""
if num % 3 == 0 && num % 5 == 0
	result == "FizzBuzz"
elsif num % 3 == 0
	result == "Fizz"
elsif num % 5 == 0
	result == "Buzz"
	end
if num[0] == 1
	result << "Bang"
end
puts result
end