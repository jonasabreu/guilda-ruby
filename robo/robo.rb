require "acoes.rb"
require "direcoes.rb"

class Robo

	def initialize(terreno, direcao)
		@terreno = terreno
		@direcao = direcao
	end

	def executa(acao)
		@direcao = acao.executa(@terreno, @direcao)
	end
end

class Terreno 
	
	def initialize(x, y)
		@lenx = x
		@leny = y
		@x = x / 2
		@y = y / 2
	end

	def move(x, y)
		raise "O robô morreu!" if (x < 0 || x >= @lenx || y < 0 || y >= @leny)
		@x = x
		@y = y
	end

	#tem alguma forma de não precisa fazer isso? (accessors)
	def x
		@x
	end

	def y
		@y
	end
end


robo = Robo.new(Terreno.new(10, 10), Cima.new)

[MostraPosicao.new, Anda.new, MostraPosicao.new, ViraDireita.new, MostraPosicao.new, Anda.new, MostraPosicao.new,
	ViraEsquerda.new, MostraPosicao.new, Anda.new, MostraPosicao.new].each do |action|
	robo.executa(action)
end


