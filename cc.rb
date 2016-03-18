#primera iteración

def solve_cipher(input)
	 arr_input = input.split("")
	 arr_input.each do |letter|
	  
	  letraencriptada = letter.ord
	  if letraencriptada == 97
	  	letraencriptada = 122
	  	print letraencriptada.chr
	  else 
	  print (letter.ord-1).chr
	  end
	 
	end

end


  
# Segunda iteración


 solve_cipher("ifmmpa")

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


