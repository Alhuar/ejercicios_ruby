=begin
def solve_cypher(input)
spl_input = input.split("")
arr = spl_input.each do |letter|
   letter.(ord-1)
	end
	
end

solve_cypher("ifmmp")


=end
a = 'Buenas tardes'


def cypher(frase, number)
arr_frase = frase.split("")
 arr_frase.map do |letter|
 	letraenctriptada = letter.ord
		if letraenctriptada == 32
			print " "
		end
		if letraenctriptada == 97
			letraenctriptada = 122
			print letraenctriptada.chr
		else
		 	print (letter.ord + number).chr
		end
	end
end

  cypher("p| uhdo qdph lv grqdog gxfn", -3)


puts "===================="


def c_cypher(frase)
	arr_frase = frase.split("")
	arr_frase.map do |letra|
		print (letra.ord-1).chr
	end
	
end

c_cypher('ifmmp')