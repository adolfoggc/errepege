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


private
	def generate_map(x_max, y_max)
		@map = Array.new
		@tiles = [0,1,2,3] #cada uma é uma coluna
		@x = 0
		y_max.times do 
			@temp = Array.new
			@x = 0
			x_max.times do
				if @x == 0
					@temp << 1
				else
					@temp << @tiles.sample
				end
				@x+=1
			end
			@map<<@temp
		end
		return @map
	end

end
