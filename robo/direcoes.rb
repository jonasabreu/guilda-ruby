#Interfaces fazem muita falta para lembrar dos métodos que preciso implementar...

class Cima
	
	def anda(terreno)
		terreno.move(terreno.x, terreno.y + 1)
	end

	def esquerda
		Esquerda.new
	end

	def direita
		Direita.new
	end
end

class Direita
	
	def anda(terreno)
		terreno.move(terreno.x + 1, terreno.y)
	end

	def esquerda
		Cima.new
	end

	def direita
		Baixo.new
	end
end

class Baixo
	
	def anda(terreno)
		terreno.move(terreno.x, terreno.y - 1)
	end

	def esquerda
		Direita.new
	end

	def direita
		Esquerda.new
	end
end

class Esquerda
	
	def anda(terreno)
		terreno.move(terreno.x - 1, terreno.y)
	end

	def esquerda
		Baixo.new
	end

	def direita
		Cima.new
	end
end

