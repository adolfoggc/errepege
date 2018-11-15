class HomeController < ApplicationController


def index
	@rena = Scenario.find(1)
end

def families
	@npc = Npc.all
end

def gregory
	@family = Npc.where(family: 'Gregory')
end

def flambard
	@family = Npc.where(family: 'Flambard')
end

def wolfgang
	@family = Npc.where(family: 'Wolfgang')
end

def hann
	@family = Npc.where(family: 'Hann')
end

def mainnet
	@family = Npc.where(family: 'Mainnet')
end

def mathghamhain
	@family = Npc.where(family: 'Mathghamhain')
end

def colors

end

def calculadora

end

def char_maker
end

def vaquinha
end

def rpg_map
	@x_max = 45;
	@y_max = 45;
	@count_x = 0;
	@count_y = 0;
	@this_id;
	@map = generate_map(@x_max, @y_max)

	#mapa geral com 675m para cada celula com 15m
end

def rpg_map_close
	@x_max = 45;
	@y_max = 45;
	@count_x = 0;
	@count_y = 0;
	@this_id;
	@map = generate_map(@x_max, @y_max)
end


private
	def generate_map(x_max, y_max)
		@map = Array.new
		@tiles = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] #cada uma é um tipo de solo
		#0 - água
		#1 a 2 - grama
		#3 a 9 - terra
		y_max.times do 
			@temp = Array.new
			@x = 0
			x_max.times do		
				@temp << @tiles.sample
				@x+=1
			end
			@map<<@temp
		end
		return @map
	end

	def standard_map()
		@map = Array.new
		#coluna 0
		line = [-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1]
		@map<< line
		#coluna 1
		line[4] = -3 #rocha
		@map<<line
		#coluna 2
		line[19] = 1 #litoral
		i = 28
		while i <= 35
			line[i] = 1
			i+=1
		end
		line[39] = 1 #litoral
		line[40] = 1 #litoral
		@map<<line

		#coluna 3
		i = 7
		while i <= 10
			line[i] = 1
			i+=1
		end
		line[i] = -2
		i = 12
		while i <= 15
			line[i] = 1
			i+=1
		end
		i = 18
		while i <= 28
			line[i] = 1
			i+=1
		end
		line[29] = 0 #cidade
		i = 30
		while i <= 34
			line[i] = 3
			i+=1
		end

		i = 35
		while i <= 39
			line[i] = 1
			i+=1
		end
		line[40] = -1
		@map<<line

		#coluna 4
		line[6] = 1
		line[7] = 1
		
		line[8] = 3
		line[9] = 3
		line[10] = 3
		line[12] = 3
		line[13] = 3
		line[14] = 3

		i = 15
		while i <= 18
			line[i] = 1
			i+=1
		end

		line[19] = 0

		i = 20
		while i <= 37
			line[i] = 1
			i+=1
		end

		#coluna 5
		line[2] = -3
		line[7] = 3

		i = 15
		while i <= 19
			line[i] = 3
			i+=1
		end

		line[34] = -3
		line[35] = -3
		line[35] = -1

		@map<<line

		#coluna 6
		line[2] = -1
		line[5] = 1
		line[11] = 3
		line[12] = -2
		line[24] = 0
		line[35] = 0
		line[41] = -3

		@map<<line

		#coluna 7
		line[4] = 1
		line[6] = 0
		line[12] = 3
		line[13] = -2
		line[24] = 3
		line[34] = 3
		line[35] = 3
		line[41] = -1
		line[42] = -3

		@map<<line

		#coluna 8
		line[2] = 1
		line[3] = 1
		line[5] = 3
		line[6] = 3
		line[13] = 3
		line[14] = -2
		line[15] = 2
		line[30] = 0
		line[42] = -1

		@map<<line

		#coluna 9
		line[1] = 1
		line[3] = 3
		line[4] = 3
		line[13] = 0
		line[16] = 2
		line[24] = -3
		line[25] = -3
		line[30] = 3
		line[39] = 1

		@map<<line

		#coluna 10
		line[2] = 3
		line[4] = 2
		line[9] = 0
		line[13] = 3
		line[20] = 0
		line[24] = 3
		line[25] = 3
		line[38] = 3
		line[40] = 1
		line[41] = 1

		@map<<line

		#coluna 11
		line[3] = 2
		line[13] = -2
		line[14] = 3
		line[20] = 3
		line[32] = 0
		line[33] = 2
 		line[34] = 2
 		line[39] = 3
 		line[40] = 3
 		line[42] = 1

 		@map<<line

 		#coluna 12
 		line[3] = 3
 		line[9] = 3
 		line[32] = 3
 		line[33] = 2
 		line[34] = 3
 		line[40] = 1
 		line[41] = 1
 		line[42] = 1
 		line[43] = 0

 		@map << line

 		#coluna 13
 		line[10] = -3
 		line[11] = -2
 		line[12] = -2
 		line[13] = 3
 		line[24] = 2
 		line[30] = 0
 		line[33] = 3
 		line[34] = -2
 		line[35] = -2
 		line[39] = 1
 		line[41] = -1
 		line[42] = -1
 		line[43] = -1

 		@map <<line

 		#coluna 14
 		line[2] = 1
 		line[7] = 0
 		line[11] = 3
 		line[12] = 3
 		line[21] = 2
 		line[22] = 2
 		line[23] = 2
 		line[24] = 3
 		line[30] = 3
 		line[34] = 3
 		line[35] = 3
 		line[38] = 1
 		line[40] = -1

 		@map<<line

 		#coluna 15
 		line[1] = -1
 		line[10] = 3
 		line[11] = -3
 		line[16] = 0
 		line[21] = 3
 		line[22] = 3
 		line[23] = 3
 		line[35] = 2
 		line[39] = -1

 		@map<<line

 		#coluna 16
 		line[16] = 3
 		line[35] = 3
 		line[37] = 1

 		@map<<line

 		#coluna 17

 		line[11] = 3
 		line[31] = 0
 		line[38] = -1
 		line[42] = -3

 		@map<<line

 		#coluna 18
 		line[9] = 0
 		line[13] = 0
 		line[31] = 3
 		line[41] = -3
 		line[42] = -1

 		@map<<line

 		#coluna 19





		#tipos de terreno
		#não atravessáveis a pé
		#-1 - Mar
		#-2 - rio/lago
		#-3 - rocha
		# 0 - cidade
		# 1 - litoral
		# 2 - floresta 
		# 3 - planície

	end

end
