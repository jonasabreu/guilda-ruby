
def map(list) 
	newList = []
	list.each do |e|
		newList << (yield e)
	end
	newList
end


#Ruby block syntax é um pé no saco. Tem alguma forma de passar funções? 
#Não consegui encontrar uma closure com parâmetros

list = map [1, 2, 3, 4] do |e| 
	"a" + e.to_s
end

puts list


