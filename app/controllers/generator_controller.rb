class GeneratorController < ApplicationController

def encounter

	@kindsEnv = Environment.all
	@kindsMon = KindsOfMonster.all


end

def room
	room_details
end

def random_encounter
	roll_encounter
end

private
	def room_details
		@description = ['A sala possui ', 'O local tem '].sample
		@detail = ['uma bigorna', 'cinzas espalhadas pelo chão', 
			'uma mochila surrada', 'fardo de palha', 'foles',
			'cinto, demasiadamente desgastado',
			'tufos de pelo', 'lençol', 'manchas de sangue nas paredes'].sample
		@num = 1 + rand(6)
		@description<<@detail<<@num.to_s
	end

	def roll_encounter
		numero = 1+rand(100)
		if numero <= 3
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' Centopeia'
			else
				@encontro = @dado+' Centopeias'
			end
		elsif numero <= 8
			@dado = 1+rand(4)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' Rato Atroz'
			else
				@encontro = @dado+' Ratos Atrozes'
			end
		elsif numero <= 10
			@dado = 1+rand(4)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' vaga-lume gigante'
			else
				@encontro = @dado+' vaga-lumes gigantes'
			end
		elsif numero <= 13
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' escorpião monstruoso'
			else
				@encontro = @dado+' escorpiões monstruosos'
			end
		elsif numero <= 16
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' aranha monstruosa pequena'
			else
				@encontro = @dado+' aranhas monstruosas pequenas'
			end
		elsif numero <= 20
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' combatente anão'
			else
				@encontro = @dado+' combatentes anões'
			end
		elsif numero <= 22
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' combatente elfo'
			else
				@encontro = @dado+' combatentes elfos'
			end
		elsif numero <= 25
			@encontro = "1 manto negro"
		elsif numero <= 28
			@encontro = '1 krenshar'
		elsif numero <= 30
			@encontro = '1 lêmure (diabo)'
		elsif numero <= 40
			@dado = 2+rand(3)
			@dado = @dado.to_s
			@encontro = @dado+' combatentes goblins'
		elsif numero <= 50
			@dado = 3+rand(4)
			@dado = @dado.to_s
			@encontro = @dado+' combatentes kobolds'
		elsif numero <= 56
			@dado = 1+rand(3)
			@dado = @dado.to_s
			@encontro = @dado+' esqueletos médios humanos (combatente)'
		elsif numero <= 62
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' zumbi humano'
			else
				@encontro = @dado+' zumbis humanos'
			end
		elsif numero <= 71
			@dado = 2+rand(4)
			@dado = @dado.to_s
			@encontro = @dado+' víboras miúdas'
		elsif numero <= 80
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' combatente orc'
			else
				@encontro = @dado+' combatentes orcs'
			end
		elsif numero <= 85
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+' stigre'
			else
				@encontro = @dado+' stigres'
			end
		elsif numero <= 90
			@encontro = '1 enxame de aranhas'
		elsif numero<=100
			@dado = 1+rand(3)
			@dado = @dado.to_s
			if @dado=='1'
				@encontro = @dado+'aaaa escorpião gigante'
			else
				@encontro = @dado+' ss escorpiões gigantes'
			end
		end
	end

	def money_converter
		
	end

end
