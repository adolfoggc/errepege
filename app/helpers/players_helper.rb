module PlayersHelper

	def ability_name(v)
		case v
		when 0
			return t("sheet.str")
		when 1
			return t("sheet.dex")
		when 2
			return t("sheet.con")
		when 3
			return t("sheet.intel")
		when 4
			return t("sheet.wis")
		when 5
			return t("sheet.cha")
		end
	end

	def ability_mod(v)
		if v%2 == 1
			v -= 1
		end
		v /= 2
		return v-5
	end


	def search_class_skill(cl, sk)
		if DndClassesSkill.where(dnd_class_id: cl).where(skill_id: sk).count > 0
			return true
		else
			return false
		end
	end

	def racial_mod(player, ability_name)
		race = player.race_id
		mod = 0
		
		if race == 5 #elfo da lua
			if ability_name == 'Constituição'
				mod = -2
			elsif ability_name == 'Destreza'
				mod = 2
			end

		elsif race == 6 #elfo do sol
			if ability_name == 'Constituição'
				mod = -2
			elsif ability_name == 'Inteligência'
				mod = 2
			end

		elsif race == 7 #elfo do selvagem
			if ability_name == 'Inteligência'
				mod = -2
			elsif ability_name == 'Destreza'
				mod = 2
			end

		elsif race == 8 #drow
			if ability_name == 'Destreza'
				mod = 2
			elsif ability_name == 'Constituição'
				mod = -2
			elsif ability_name == 'Inteligência'
				mod = 2
			elsif ability_name == 'Carisma'
				mod = 2
			end

		elsif race ==9  #elfo da floresta
			if ability_name == 'Destreza'
				mod = 2
			elsif ability_name == 'Constituição'
				mod = -2
			elsif ability_name == 'Força'
				mod = 2
			elsif ability_name == 'Inteligência'
				mod = -2
			elsif ability_name == 'Carisma'
				mod = -2
			end
		elsif race == 10 #anão escudo
			if ability_name == 'Constituição'
				mod = 2
			elsif ability_name == 'Carisma'
				mod = -2
			end

		elsif race == 11 #anão dourado
			if ability_name == 'Constituição'
				mod = 2
			elsif ability_name == 'Destreza'
				mod = -2
			end

		elsif race == 12 #anão cinzento
			if ability_name == 'Constituição'
				mod = 2
			elsif ability_name == 'Carisma'
				mod = -4
			end

		elsif race == 13 #meio-orc
			if ability_name == "Força"
				mod = 2
			elsif ability_name == 'Inteligência'
				mod = -2
			elsif ability_name == 'Carisma'
				mod = -2
			end
		end


		if true == false
			if ability_name == "Força"

			elsif ability_name == 'Destreza'
				
			elsif ability_name == 'Constituição'

			elsif ability_name == 'Inteligência'
	
			elsif ability_name == 'Sabedoria'
			
			else

			end
		end

		return mod	
	end

	def racial_skill_mods(skill_id, player)
		if true == false
		end

	end

	def get_picture(player)
		if player.dnd_class.name == 'Bárbaro'
            pic = "S_Buff14.png"
        elsif player.dnd_class.name == 'Bardo'
        	pic = "I_Key04.png"
        elsif player.dnd_class.name == 'Clérigo'
            pic = "Ac_Medal01.png"
        elsif player.dnd_class.name == 'Druida'
            pic = "I_Leaf.png"
        elsif player.dnd_class.name == 'Feiticeiro'
            pic = "S_Shadow03.png"
        elsif player.dnd_class.name == 'Guerreiro'
            pic = "C_Elm03.png"
        elsif player.dnd_class.name == 'Ladino'
            pic = "W_Dagger006.png"
        elsif player.dnd_class.name == 'Mago'
            pic = "C_Hat01.png"
        elsif player.dnd_class.name == 'Monge'
            pic = "S_Buff03.png"
        elsif player.dnd_class.name == 'Paladino'
            pic = "S_Holy07.png"
        elsif player.dnd_class.name == 'Ranger'
            pic = "W_Bow02.png"
        end
	end


end
