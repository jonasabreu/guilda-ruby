
# Tem alguma syntaxe melhor do que do ... end? 3 linhas para passar uma closure é triste :)

def filter(list) 
	newList = []
	list.each do |e|
		newList << e if (yield e)
	end
	newList
end

list = filter [1, 2, 3, 4] do |e| 
	e > 2
end

puts list


