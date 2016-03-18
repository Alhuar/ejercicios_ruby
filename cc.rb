
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


