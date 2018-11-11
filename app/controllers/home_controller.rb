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
end

end
