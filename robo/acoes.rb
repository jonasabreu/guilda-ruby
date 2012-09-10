class Anda
	
	def executa(terreno, direcao)
		direcao.anda(terreno)
		direcao	
	end
end

class ViraEsquerda
	def executa(terreno, direcao)
		direcao.esquerda
	end
end

class ViraDireita
	def executa(terreno, direcao)
		direcao.direita	
	end
end

class MostraPosicao

	def executa(terreno, direcao)
		puts "(#{terreno.x},#{terreno.y}) #{direcao.class}"	
		direcao	
	end
end
