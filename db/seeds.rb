# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

print 'Gerando Ambientes... '
	tipos = [
	'Abençoado Campos do Elíseo', 'Águas Frias', 'Águas Temperadas', 'Aquático',
	'Aquático Frio', 'Aquático Quente', 'Aquático Temperado',
	'Camadas Infinitas do Abismo', 'Caos Eterno e Mutável do Limbo',
	'Clareiras Olímpicas de Arbórea', 'Colinas', 'Colinas Frias', 'Colinas Quentes',
	'Colinas Temperadas', 'Desertos Cinzentos de Hades', 'Desertos Gelados',
	'Desertos Quentes', 'Desertos Temperados', 'Domínios Heróicos de Ysgard',
	'Eternidade Gélida de Geena', 'Florestas Frias', 'Florestas Quentes',
	'Florestas Temperadas', 'Montanhas Frias', 'Montanhas Quentes',
	'Montanhas Temperadas', 'Nirvana Tecnológico de Mecânus',
	'Nove Infernos de Baator', 'Plano Astral', 'Plano Elemental da Terra', 
	'Plano Elemental da Água', 'Plano Elemental do Ar', 'Plano Elemental do Fogo', 
	'Plano Etéreo', 'Plano da Energia Positiva', 'Plano das Sombras', 
	'Plano de Tendência Boa', 'Planícies', 'Planícies Frias', 'Planícies Quentes',
	'Planícies Temperadas', 'Profundezas Ecoantes de Pandemônio',
	'Profundezas Tártaras de Carceri', 'Pântanos Frios', 'Pântanos Quentes',
	'Pântanos Temperados', 'Qualquer', 'Quente',
	'Sete Paraísos Escalonados de Celéstia', 'Subterrâneo', 'Temperado',
	'Terrestre'
	]

	tipos.each do |t| 
		Environment.create!( kind: t)
	end

puts '[OK]'

print 'Gerando Alinhamentos... '
	tipos = [
		'Leal e Boa', 'Leal e Neutra', 'Leal e Má', 'Neutro e Boa', 'Neutro Pura',
		'Neutro e Má', 'Caótica e Boa', 'Caótica e Neutra', 'Caótica e Má',

		'Boa', 'Neutra', 'Má', 'Leal', 'Caótico' 
	]
	tipos.each do |t| 
		Alignment.create!( kind: t)
	end

puts '[OK]'

print 'Gerando Tipos de Monstros... '
	tipos = [
		'Aberração', 'Aberração', 'Abissal', 'Água','Animal', 'Anjo', 'Anão', 
		'Aquático', 'Ar', 'Arconte', 'Baatezu', 'Besta Mágica', 'Constructo', 
		'Dragão', 'Eladrin', 'Elemental', 'Elfo', 'Enxame', 'Extra-Planar', 'Fada', 
		'Fogo', 'Fogo', 'Frio', 'Gigante', 'Globinóide', 'Guardinal', 'Halfling', 
		'Humanóide', 'Humanóide Monstruoso', 'Incorpóreo', 'Inseto', 'Limo', 
		'Metamorfo', 'Morto-Vivo', 'Planar', 'Planta', 'Réptil', "Tanar'ri", 'Terra'
	]
	tipos.each do |t| 
		KindsOfMonster.create!( kind: t)
	end

	#a implementar - Meio-Dragão, Meio-Celestial, Meio-Abissal

puts '[OK]'

print 'Gerando Monstros... '
	monstros = [
		{name: 'Dragão Vermelho', environment_id: 26, dc: 15 }
	]
	monstros.each do |m| 
		Monster.create!( m )
	end


puts '[OK]'

print 'Gerando Classes... '
	classes = [
		{name: 'Bárbaro', hit_die: 12, skill_points: 4 },
		{name: 'Bardo', hit_die: 6, skill_points: 6 },
		{name: 'Clérigo', hit_die: 8, skill_points: 2 },
		{name: 'Druida', hit_die: 8, skill_points: 4 },
		{name: 'Feiticeiro', hit_die: 4, skill_points: 2 },
		{name: 'Guerreiro', hit_die: 10, skill_points:  2},
		{name: 'Ladino', hit_die: 6, skill_points: 8 },
		{name: 'Mago', hit_die: 4, skill_points:  2},
		{name: 'Monge', hit_die: 8, skill_points: 4 },
		{name: 'Paladino', hit_die: 10, skill_points: 2 },
		{name: 'Ranger', hit_die: 8, skill_points:  6} 
	]
	classes.each do |c| 
		DndClass.create!( c )
	end
puts '[OK]'

#INCOMPLETO
print 'Gerando Perícias... '
	skills = [
		{name: 'Abrir Fechaduras', trained: true, related_ability: 1 },
		{name: 'Acrobacia', trained: true, dex_penalty: true, related_ability: 1 },
		{name: 'Adestrar Animais', trained: true, related_ability: 5, description: 'Treinar animais e ensinar comandos. Há uma enorme lista de comandos e suas dificuldades de ensino no Livro do Jogador, cap 4.' },
		{name: 'Arte da Fuga', dex_penalty: true, related_ability: 1 },
		{name: 'Atuação: Canto',  related_ability: 5 },
		{name: 'Atuação: Dança',  related_ability: 5 },
		{name: 'Atuação: Dramaturgia',  related_ability: 5 },
		{name: 'Atuação: Humor',  related_ability: 5, description: 'Boas piadas, provocativas ou não e interpretação humorística' },
		{name: 'Atuação: Instrumentos de Corda',  related_ability: 5, description: 'Violões, bandolins, e harpas são exemplos de intrumentos desta perícia' },
		{name: 'Atuação: Instrumentos de Percussão',  related_ability: 5 },
		{name: 'Atuação: Instrumentos de Sopro',  related_ability: 5 },
		{name: 'Atuação: Instrumentos de Teclas',  related_ability: 5 },
		{name: 'Atuação: Oratória',  related_ability: 5, description: 'Capacidade de narrar e recitar bem' },
		{name: 'Avaliação', related_ability: 3 },
		{name: 'Blefar', related_ability: 5 },
		{name: 'Cavalgar', trained: false, related_ability: 1 },
		{name: 'Concentração', trained: false, related_ability: 2 },
		{name: 'Conhecimento: Arcano', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Arquitetura e Engenharia', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Geografia', trained: true, related_ability: 3 },
		{name: 'Conhecimento: História', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Local', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Masmorras', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Natureza', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Nobreza e Realeza', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Planos', trained: true, related_ability: 3 },
		{name: 'Conhecimento: Religião', trained: true, related_ability: 3 },
		{name: 'Cura', related_ability: 4 },
		{name: 'Decifrar Escrita', trained: true, related_ability: 3 },
		{name: 'Diplomacia', related_ability: 5 },
		{name: 'Disfarces', related_ability: 5 },
		{name: 'Equilíbrio', dex_penalty: true, related_ability: 1 },
		{name: 'Escalar', dex_penalty: true, related_ability: 0 },
		{name: 'Esconder-se', dex_penalty: true, related_ability: 1 },
		{name: 'Falar Idioma: Abissal', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Anão', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Aquan', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Auran', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Celestial', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Comum', trained: true, related_ability: 3, description: 'Idioma generalista e com sinais que é uma tentativa de criar um idioma unificado, mas que funciona para comercio e comunicações bem simples' },
		{name: 'Falar Idioma: Dracônico', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Druidico', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Élfico', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Gnomo', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Goblin', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Gigante', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Gnoll', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Halfling', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Ignan', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Infernal', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Língua de Sinais Drow', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Ore', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Silvestre', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Suberrâneo', trained: true, related_ability: 3 },
		{name: 'Falar Idioma: Terran', trained: true, related_ability: 3 },
		{name: 'Falsificação', related_ability: 3 },
		{name: 'Furtividade', trained: true, related_ability: 1 },
		{name: 'Identificar Magia', trained: true, related_ability: 3 },
		{name: 'Intimidação', related_ability: 5 },
		{name: 'Natação', weight_penalty: true, related_ability: 0 },
		{name: 'Observar', related_ability: 4 },
		{name: 'Obter Informação', related_ability: 5 },
		{name: 'Ofícios: Alquimia', trained: true, related_ability: 3 },
		{name: 'Ofícios: Alfaiataria', trained: true, related_ability: 3 },
		{name: 'Ofícios: Armadilharia', trained: true, related_ability: 3 },
		{name: 'Ofícios: Armeiro', trained: true, related_ability: 3 },
		{name: 'Ofícios: Arquearia', trained: true, related_ability: 3 },
		{name: 'Ofícios: Carpintaria', trained: true, related_ability: 3, description: 'Trabalhos gerais com madeira.' },		
		{name: 'Ofícios: Ferreraria', trained: true, related_ability: 3 },
		{name: 'Ofícios: Ourives', trained: true, related_ability: 3 },
		{name: 'Ofícios: Sapateiro', trained: true, related_ability: 3 },
		{name: 'Operar Mecanismos', trained: true, related_ability: 3 },
		{name: 'Ouvir', related_ability: 4 },
		{name: 'Prestidigitação', trained: true, related_ability: 1 },
		{name: 'Procurar', related_ability: 4 },
		{name: 'Profissão: Agricultor', trained: true, related_ability: 4 },
		{name: 'Profissão: Boticário', trained: true, related_ability: 4, description: 'Profissional da saúde com conhecimento em ervas e cura.' },
		{name: 'Profissão: Banqueiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Caçador', trained: true, related_ability: 4 },
		{name: 'Profissão: Cervejeiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Cozinheiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Curtidor', trained: true, related_ability: 4 },
		{name: 'Profissão: Engenheiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Escriba', trained: true, related_ability: 4 },
		{name: 'Profissão: Estalajadeiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Fazendeiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Guia', trained: true, related_ability: 4 },
		{name: 'Profissão: Herborista', trained: true, related_ability: 4, description: 'Conhecimento de utilização correta de ervas.' },
		{name: 'Profissão: Lenhador', trained: true, related_ability: 4 },
		{name: 'Profissão: Marinheiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Minerador', trained: true, related_ability: 4 },
		{name: 'Profissão: Moleiro', trained: true, related_ability: 4 },
		{name: 'Profissão: Pastor', trained: true, related_ability: 4 },
		{name: 'Profissão: Pescador', trained: true, related_ability: 4 },
		{name: 'Profissão: Rancheiro', trained: true, related_ability: 4 },
		{name: 'Saltar', related_ability: 0, weight_penalty: true },
		{name: 'Sentir Motivação', related_ability: 4 },
		{name: 'Sobrevivência', related_ability: 4 },
		{name: 'Usar Cordas', related_ability: 1 },
		{name: 'Usar Instrumento Mágico', trained: true, related_ability: 5 }
	]
	skills.each do |s| 
		Skill.create!( s )
	end
puts '[OK]'

#{name: 'Ofícios: Apotecário', trained: true, related_ability: 3 },


print 'Gerando Raças... '
	races = [
		{name: 'Humano Ocidental', description: 'Humanos pertencentes aos reinos do oeste de Eudóxio.
		 Tem uma cultura semelhante a oriental, com nomes e aparências. Costumam tem exclusivamente
		 cabelos escuros. Seus olhos variam entre os tons de castanho. Em geral são ser místicos,
		 mas pragmáticos e focados em seus objetivos, sendo pouco abertos a mudanças.', child: 10 ,
		 teen: 14, adult: 35, ancient: 90 },
		{name: 'Humano Oriental', description: 'Humanos pertencentes aos reinos do nordeste de Eudóxio.
		 Tem uma cultura semelhante a européia, com nomes e aparências. Costumam ter cabelos loiros, mas
		 alguns possuem cabelos em tons escuros. Seus olhos variam em tons de castanho e azul.', child: 10,
		 teen: 14, adult: 35, ancient: 90 },
		{name: 'Humano Sulista', description: 'A população sulista tem uma cultura semelhante a
		 greco-romana, com nomes e aparências. Costumam ter cabelos escuros, mas alguns
		 tem tons claros. É dito que quanto mais próximo do sul, mais os cabelos são claros, tendendo
		 para a cor loira. Seus olhos são do verde ao castanho, passando pelo tom azul. São persistentes
		 e costumam ser endurecidos diante das adversidades. Detestam as temperaturas altas do norte e
		 possuem um panteão próprio de divindades.', child: 10, teen: 14, adult: 35, ancient: 90  },
		{name: 'Humano Mesocontinental', description: 'Habitantes do centro do continente. São altos e
		 costumam ter um físico bonito. Costumam ter cabelos escuros, mas alguns tem tons claros. Muitos
		 possuem a pele escura como Elfos do Sol, mas há aqueles que tem tons mais claros. Seus olhos são
		 variações de verde e castanho. A maioria segue um código de conduta pessoal que protege seu grupo.
		 São bastante amigáveis, ainda mais com aqueles que seguem seus ritos. Uma amizade com um mesocontinental é digna de histórias de heróis. No entanto, trair a confiança
		 de um destes é desolador e conquistar a confiança novamente é bastante complicado.', child: 10,
		 teen: 14, adult: 35, ancient: 90 },
		{name: 'Elfo da Lua', description: '-', child: 60, teen: 109, adult: 175, ancient: 750},
		{name: 'Elfo do Sol', description: '-', child: 60, teen: 109, adult: 175 , ancient: 750  },
		{name: 'Elfo Selvagem', description: '-', child: 60, teen: 109, adult: 175, ancient: 750},
		{name: 'Elfo Drow', description: '-', child: 60, teen: 109, adult: 175, ancient: 750 },
		{name: 'Elfo da Floresta', description: '-', child: 60, teen: 109, adult: 175, ancient: 750 },
		{name: 'Anão Escudo', description: '-', child: 25, teen: 39, adult: 125, ancient: 450  },
		{name: 'Anão Dourado', description: '-', child: 25, teen: 39, adult: 125, ancient: 450  },
		{name: 'Anão Cinzento', description: '-', child: 25, teen: 39, adult: 125, ancient: 450 },
		{name: 'Meio-Orc', description: '-', child: 9, teen: 13, adult: 30, ancient: 80 },
		{name: 'Meio-Elfo da Lua', description: '-', child: 13, teen: 19, adult: 62, ancient: 185},
		{name: 'Meio-Elfo do Sol', description: '-', child: 13, teen: 19, adult: 62, ancient: 185},
		{name: 'Meio-Elfo Selvagem', description: '-', child: 13, teen: 19, adult: 62, ancient: 185},
		{name: 'Meio-Elfo Drow', description: '-', child: 13, teen: 19, adult: 62, ancient: 185},
		{name: 'Meio-Elfo da Floresta', description: '-', child: 13, teen: 19, adult: 62, ancient: 185}
	]
	races.each do |r| 
		Race.create!( r )
	end
puts '[OK]'

print 'Gerando Papéis... '
	roles = [
		{name: 'Alquimia', description: '-' },
		{name: 'Alfaiataria', description: '-' },
		{name: 'Armadilharia', description: '-' },
		{name: 'Armeiro', description: '-' },
		{name: 'Arquearia', description: '-' },
		{name: 'Carpintaria', description: 'Trabalhos gerais com madeira.' },		
		{name: 'Ferreraria', description: '-' },
		{name: 'Ourives', description: '-' },
		{name: 'Sapateiro', description: '-' },
		{name: 'Agricultor', description: '-' },
		{name: 'Boticário', description: 'Profissional da saúde com conhecimento em ervas e cura.' },
		{name: 'Banqueiro', description: '-' },
		{name: 'Cervejeiro', description: '-' },
		{name: 'Cozinheiro', description: '-' },
		{name: 'Curtidor', description: '-' },
		{name: 'Engenheiro', description: '-' },
		{name: 'Escriba', description: '-' },
		{name: 'Estalajadeiro', description: '-' },
		{name: 'Fazendeiro', description: '-' },
		{name: 'Guia', description: '-' },
		{name: 'Herborista', description: 'Conhecimento de utilização correta de ervas.' },
		{name: 'Lenhador', description: '-' },
		{name: 'Marinheiro', description: '-' },
		{name: 'Minerador', description: '-' },
		{name: 'Moleiro', description: '-' },
		{name: 'Pastor', description: '-' },
		{name: 'Pescador', description: '-' },
		{name: 'Rancheiro', description: '-' }

	]

	roles.each do | r |
		Role.create!(r)
	end
puts '[OK]'

	homens = ['Adam', 'Geoffrey', 'Gilbert', 'Henry', 'Hugh', 'John', 'Nicholas', 'Peter', 'Ralf', 'Richard', 'Robert', 'Roger', 'Simon', 'Thomas', 'Walter', 'William', 'Merek', 'Carac', 'Ulric', 'Tybalt', 'Borin', 'Sadon', 'Terrowin', 'Rowan', 'Forthwind', 'Althalos', 'Fendrel', 'Brom', 'Hadrian', 'Daw', 'Elric', 'Hann', 'Herry', 'Hob', 'Jankin', 'Mack', 'Aldus', 'Jasper', 'Alan', 'Conan', 'Donald', 'Gawain', 'Basil', 'Arthur', 'Mordred', 'Dervel', 'Percival', 'Agricola', 'Eliot', 'Hector', 'Manfred', 'Lucius', 'Lambert', 'Griffith', 'Guts', 'Gerald', 'Alphonse', 'Gareth', 'Aldrich', 'Alistar', 'Allister', 'Archer', 'Ascott', 'Cleff', 'Ashton', 'Barden', 'Barlow', 'Baxter', 'Bentley', 'Bowman', 'Cid', 'Brandom', 'Cederic', 'Dalton', 'Drake', 'Edgar', 'Sawyer', 'Allegro', 'Ambrich', 'Bermund', 'Demetrius', 'Faust', 'Finn', 'Jake', 'Cecil', 'Kain', 'Barret', 'Rex', 'Josef', 'Gordon', 'Locke', 'Ward', 'Dias', 'Leon', 'Noel', 'Cliff', 'Cyrus', 'Magus', 'Malcom', 'Owen', 'Tristan', 'Alec', 'Greg', 'Alexander', 'Lucian', 'Martin', 'Peregrin', 'Quentin', 'Connor', 'Vincent', 'Eric', 'Aldwin', 'Baldwin', 'Edward', 'Goldwin', 'Hebert', 'Wilfrid', 'Abelard', 'Absolon', 'Achard', 'Achart', 'Adalbero', 'Agu', 'Aignen', 'Agnien', 'Alaire', 'Alarge', 'Alazaïs', 'Albin', 'Albinus', 'Alcher', 'Aldebrand', 'Aldemund', 'Alderan', 'Aleaumin', 'Aliaume', 'Alyaume', 'Alerot', 'Alodet', 'Aloysius', 'Alured', 'Amadeus', 'Amalric', 'Amalvis', 'Amanieu', 'Amigart', 'Araimfres', 'Arbert', 'Arnulf', 'Arsieu', 'Arvide', 'Augebert', 'Avenel', 'Baderon', 'Baldric', 'Bangin', 'Bardin', 'Barnier', 'Baut', 'Biche', 'Billebaut', 'Bochard', 'Bouchard', 'Burnel', 'Buselin', 'Centule', 'Chartain', 'Chatbert', 'Claudien', 'Colbert', 'Coumyn', 'Cyon', 'Cyprian', 'Daimbert', 'Dalmas', 'Daluce', 'Damian', 'Darius', 'Delion', 'Digne', 'Doete', 'Dolfin', 'Duche', 'Dudic', 'Éléazar', 'Emambe', 'Emont', 'Engelard', 'Engenouf', 'Enion', 'Erengier', 'Ertaut', 'Esdelot', 'Espan', 'Estène', 'Estout', 'Fabien', 'Famète', 'Fameite', 'Fangeaux', 'Fiebras', 'Flambard', 'Floouen', 'Fluellen', 'Fortin', 'Fourcaut', 'Foursi', 'Fray', 'Fremin', 'Freskin', 'Ganelon', 'Garsille', 'Gascot', 'Gaubert', 'Gauchier', 'Gaude', 'Gauguein', 'Gembert', 'Gentian', 'Gentien', 'Gerland', 'Gildon', 'Giriaume', 'Gobin', 'Gobelin', 'Godebert', 'Godichal', 'Golias', 'Gonfroi', 'Gontier', 'Goumelet', 'Gourdet', 'Gracien', 'Gracyen', 'Granville', 'Grefin', 'Grenville', 'Grifon', 'Gringoire', 'Guermont', 'Guigue', 'Guineboud', 'Habreham', 'Haguin', 'Haiete', 'Halebran', 'Halinard', 'Haquin', 'Harchier', 'Hascouf', 'Hecelin', 'Henseus', 'Herbrand', 'Herchier', 'Herculles', 'Hernouet', 'Hesdin', 'Hétouyn', 'Heude', 'Hique', 'Hocequin', 'Honoré', 'Honot', 'Huard', 'Huart', 'Huebald', 'Huidelon ', 'Huitace', 'Humbert', 'Hunout', 'Huoul', 'Huroin', 'Ianto', 'Ilbert', 'Isore', 'Japhet', 'Jeharraz', 'Jehaue', 'Jessamy', 'Jevan', 'Jolis', 'Jollivet', 'Jonas', 'Jonathas', 'Jorin', 'Jude', 'Jumel', 'Juste', 'Kerrich', 'Lagot', 'Léal', 'Leavold', 'Leigh', 'Leofard', 'Letard', 'Lie', 'Lièce', 'Maillart', 'Maillet', 'Mainnet', 'Malise', 'Marcel', 'Marin', 'Maulore', 'Meriet', 'Merigot', 'Elminster', 'Mervin', 'Mervyn', 'Mittainne', 'Morel', 'Néapolion', 'Névelet', 'Nivelet', 'Nicaise', 'Noeë', 'Noël', 'Norbert', 'Obert', 'Odard', 'Omerus', 'Ondart', 'Orderic', 'Orland', 'Orrick', 'Othuel', 'Otuel', 'Papin', 'Parcin', 'Pariset', 'Pepin', 'Petruche', 'Philbert', 'Picot', 'Platiau', 'Popin', 'Popiniau', 'Porchier', 'Poufille', 'Pricion', 'Quabin', 'Quenall', 'Raguenel', 'Raguet', 'Rahere', 'Rahier', 'Rasequin', 'Ratier', 'Rauve', 'Redway', 'Renonys', 'Renost', 'Renouf', 'Resse', 'Ribald', 'Ringerus', 'Roderick', 'Rodney', 'Rodolph', 'Roncin', 'Roscelin', 'Rocelin', 'Rocelinus', 'Rosser', 'Rostand', 'Rotrou', 'Roucaud', 'Ruald', 'Ruaud', 'Rufier', 'Rufin', 'Rufus', 'Russell', 'Roussel', 'Sadun', 'Saillot', 'Sainte', 'Santin', 'Sehier Syhier', 'Senebaut', 'Sequin', 'Sernays', 'Sevrin', 'Sicard', 'Sicho', 'Sicre', 'Sigan', 'Sigismund', 'Sirion', 'Sivis', 'Sohalet', 'Soolet', 'Sohier', 'Souni', 'Sonnet', 'Taillefer', 'Taillemache', 'Talon', 'Tassart', 'Tassot', 'Tassin', 'Tevenot', 'Thouche', 'Tiessot', 'Torphin', 'Turbertus', 'Turquan', 'Tutain', 'Ulger', 'Vane', 'Vannes', 'Vézian', 'Victor', 'Waleran', 'Waleron', 'Wynkyn', 'Ydevert', 'Tsabu', 'Parn', 'Cedric', 'Vash', 'Áed', 'Áedán', 'Áedh', 'Arthfael', 'Bradán', 'Bréanainn', 'Brian', 'Bricius', 'Cadeyrn', 'Caiside', 'Caomh', 'Caomhán', 'Cathasach', 'Corraidhín', 'Cuidightheach', 'Cunobelinus', 'Cynbel', 'Cynwrig', 'Donnchad', 'Donndubhán', 'Drest', 'Drust', 'Drustan', 'Dubhshláine', 'Dubhthach', 'Elisedd', 'Eógan', 'Fáelán', 'Fedelmid', 'Fedlimid', 'Galchobhar', 'Gwrtheryn', 'Haerviu', 'Iodocus', 'Iudicael', 'Judicaël', 'Judoc', 'Lóegaire', 'Lugubelenus', 'Lugge', 'Máedoc', 'Maeleachlainn', 'Mathghamhain', 'Mochán', 'Morcant', 'Nechtan', 'Glenn', 'Bram', 'Rory', 'Aldous', 'Alistair', 'Bennett', 'Conrad', 'Constantine', 'Dietrich', 'Everard', 'Godwin', 'Jeffery', 'Joachim', 'Ladislas', 'Luther', 'Milo', 'Odo', 'Randall', 'Robin', 'Theobald', 'Wade', 'Warner', 'Wolfgang', 'Jorah', 'Théodred', 'Théoden', 'Gandalf', 'Aragon', 'Eragon', 'Isildur', 'Húrin', 'Húor', 'Ailwin', 'Alard', 'Aldred', 'Amaury', 'Terenas', 'Lothar', 'Anselm', 'Arnald', 'Asa', 'Aubrey', 'Bartholomew', 'Bennet', 'Bertram', 'Blacwin', 'Colin', 'David', 'Edwin', 'Elias', 'Helyas', 'Engeram', 'Ernald', 'Eustace', 'Fabian', 'Fordwin', 'Forwin', 'Fulk', 'Gamel', 'Gerard', 'Gervase', 'Giles', 'Gladwin', 'Guy', 'Hamo', 'Hamond', 'Harding', 'Herlewin', 'Hervey', 'James', 'Jocelin', 'Jordan', 'Lawrence', 'Leofwin', 'Luke', 'Masci', 'Matthew', 'Maurice', 'Michael', 'Nigel', 'Hodor', 'Olivar', 'Osbert', 'Norman', 'Philip', 'Ralph', 'Ranulf', 'Saer', 'Samer', 'Savaric', 'Silvester', 'Stephan', 'Terric', 'Terry', 'Thierry', 'Thurstan', 'Umfrey', 'Warin', 'Wimarc', 'Ymbert', 'Adalbert', 'Bernard', 'Bero', 'Burchard', 'Brego', 'Carloman', 'Drogo', 'Engilbert', 'Gerold', 'Grimald', 'Hartmut', 'Hildebald', 'Meginhard', 'Otker', 'Tassilo', 'Waltgaud', 'Werinbert'


 
	]


	mulheres = ['Sara', 'Tyris', 'Nadia', 'Ayla', 'Leene', 'Magge', 'Marigold', 'Lufu', 'Lindsey', 'Ababilia', 'Abbatissa', 'Abelota', 'Achethe', 'Admiranda', 'Aicusa', 'Akelda', 'Alainne', 'Alba', 'Aleusa', 'Alma', 'Alsneta', 'Andrie', 'Angelet', 'Anthoinette', 'Argentina', 'Atilda', 'Avoca', 'Badelota', 'Bausanne', 'Bauteut', 'Bedeluue', 'Biedeluue', 'Bencelina', 'Benigna', 'Berte', 'Bertha', 'Blissot', 'Alison', 'Blitha', 'Boime', 'Brise', 'Caesaria', 'Calla', 'Camilla', 'Ceday', 'Celestine', 'Celestria', 'Chloe', 'Chuna', 'Coulombe', 'Dameta', 'Dametta', 'Damisona', 'Decima', 'Deloys', 'Desdemona', 'Disdemona', 'Desiderata', 'Desirata', 'Diamanda', 'Diana', 'Dyana', 'Dinae', 'Dinah', 'Dolichena', 'Dominica', 'Dominy', 'Dorcas', 'Drusilla', 'Drueta', 'Durilda', 'Elaisse', 'Ellerete', 'Emeria', 'Emery', 'Enota', 'Epicelena', 'Esa', 'Eschiva', 'Esdeline', 'Estienne', 'Estrangia', 'Eugenia', 'Eustachia', 'Eustacia', 'Finepopla', 'Fortunata', 'Fousafia', 'Gemma', 'Gerbaga', 'Gem', 'Germainne', 'Gersendis', 'Ginnade', 'Giraude', 'Gladuse', 'Golla', 'Helmech', 'Helmet', 'Helmeth', 'Helvynya', 'Hesse', 'Houdée', 'Ilene', 'Imedia', 'Katrina', 'Italia', 'Jeromia', 'Jervaise', 'Jessamine', 'Josiane', 'Josina', 'Jourdenete', 'Justina', 'Keina', 'Kiena', 'Kemma', 'Kima', 'Kymme', 'Kinna', 'Leda', 'Legarda', 'Ligarda', 'Lige', 'Lena', 'Letselina', 'Lia', 'Libourc', 'Lictina', 'Lota', 'Maronne', 'Marsilia', 'Martine', 'Maxencia', 'Mazelina', 'Melodia', 'Melodie', 'Melusine', 'Michièle', 'Minna', 'Minnota', 'Mique', 'Mitri', 'Moder', 'Modesty', 'Nicia', 'Nycaise', 'Noblete', 'Norma', 'Olimpias', 'Precis', 'Optata', 'Oreute', 'Organa', 'Ottilia', 'Pacchild', 'Pechel', 'Pandonia', 'Pandwyna', 'Parise', 'Parisete', 'Pasques', 'Paulina', 'Plente', 'Popelina', 'Preciosa', 'Precious', 'Primaveira', 'Primeveire', 'Pronèle', 'Rametta', 'Roana', 'Roberge', 'Rogerete', 'Salerna', 'Sewenna', 'Souplice', 'Splendora', 'Sreda', 'Swale', 'Thangustella', 'Udelina', 'Udeline', 'Ulia', 'Ully', 'Urie', 'Watcelina', 'Wimarca', 'Wimarc', 'Ynstauncia', 'Ysane', 'Ysenda', 'Ysopa', 'Audrey', 'Zelda', 'Celine', 'Rena', 'Opera', 'Sophia', 'Aeris', 'Aerith', 'Mirage', 'Gwen', 'Agnes', 'Leah', 'Agatha', 'Aimee', 'Alice', 'Alix', 'Amice', 'Angharad', 'Ann', 'Anissa', 'Anne', 'Aoibheann', 'Arabella', 'Aurora', 'Ava', 'Aveline', 'Averil', 'Avila', 'Beata', 'Belinda', 'Blanche', 'Bonita', 'Candida', 'Cassandra', 'Cecilia', 'Cecily', 'Celia', 'Ceridwen', 'Charis', 'Cicely', 'Clare', 'Clemence', 'Colette', 'Constance', 'Cynthia', 'Dulcie', 'Eden', 'Edith', 'Elira', 'Elizabeth', 'Eloise', 'Emilia', 'Amelia', 'Emma', 'Ermintrude', 'Erma', 'Eve', 'Faye', 'Felicia', 'Fleur', 'Genevieve', 'Geneviève', 'Gillian', 'Giselle', 'Gwendolenh', 'Hedwig', 'Hermia', 'Hermine', 'Hermione', 'Hester', 'Esther', 'Irmtraud', 'Isabel', 'Isidora', 'Isis', 'Jane', 'Yahweh', 'Jeanne', 'Janet', 'Jennifer', 'Joan', 'Joanna', 'Jocelyn', 'Joyce', 'Kate', 'Kunigunde', 'Lacey', 'Laetitia', 'Laura', 'Lucy', 'Luitgard', 'Lynette', 'Macy', 'Marian', 'Marie', 'Marion', 'Marjorie', 'Margaret', 'Mary', 'Matilda', 'Mirabelle', 'Monica', 'Morfydd', 'Mór', 'Muriel', 'Nancy', 'Cornelia', 'Nerys', 'Nerissa', 'Nicola', 'Olivia', 'Ortrun', 'Paige', 'Petronia', 'Petra', 'Philippa', 'Polly', 'Prudence', 'Rachel', 'Regina', 'Regula', 'Rosalind', 'Rosamund', 'Rose', 'Sigrid', 'Síle', 'Sol', 'Stella', 'Susanna', 'Sybil', 'Tamsin', 'Thomasina', 'Theresa', 'Ursula', 'Violet', 'Wanda', 'Morrigan', 'Leiliana', 'Bethany', 'Viviene', 'Tallis', 'Sera', 'Isabela', 'Merril', 'Leandra', 'Meredith', 'Flemeth', 'Marethari', 'Petrice', 'Maren', 'Amalia', 'Anora', 'Bella', 'Kalah', 'Bryce', 'Oriana', 'Danyla', 'Elemena', 'Filda', 'Gilmore', 'Lanaya', 'Landra', 'Lenka', 'Kaitlyn', 'Isolde', 'Elora', 'Ghenya', 'Goldanna', 'Leorah', 'Lenne', 'Lily', 'Liselle', 'Lissette', 'Justine', 'Melora', 'Myaja', 'Nola', 'Olinda', 'Perth', 'Harwen', 'Shale', 'Valena', 'Vasilia', 'Rune', 'Afura', 'Miz', 'Shayla', 'Diva', 'Nimue', 'Norwena', 'Pietra', 'Luigsech', 'Birthe', 'Boadiceia', 'Buodicca', 'Brianne', 'Bridie', 'Cass', 'Cleena', 'Deitra', 'Delma', 'Duana', 'Eadan', 'Eigyr', 'Epona', 'Fedelma', 'Feidhelm', 'Fedelm', 'Fiona', 'Gaenor', 'Guinevere', 'Gwenevere', 'Jenna', 'Jennie', 'Kendra', 'Meave', 'Morgaine', 'Morgana', 'Myrna', 'Vivi', 'Yenifer', 'Yenny', 'Mayu', 'Marle', 'Jinnie', 'Lunna', 'Sonya', 'Sonja', 'Tarja', 'Ceinwyn', 'Nath', 'Becca', 'Karinne', 'Vesta', 'Lanna', 'Arwen', 'Éowyn', 'Adele', 'Tarya', 'Acele', 'Acholate', 'Ada', 'Adiannon', 'Adorra', 'Ahanna', 'Akara', 'Akassa', 'Akia', 'Amaerilde', 'Amara', 'Amarisa', 'Amarizi', 'Ana', 'Andonna', 'Ani', 'Annalyn', 'Archane', 'Ariannona', 'Arina', 'Arryn', 'Asada', 'Awnia', 'Ayne', 'Basete', 'Bathelie', 'Bethe', 'Brana', 'Brianan', 'Bridonna', 'Brynhilde', 'Calene', 'Calina', 'Celoa', 'Cephenrene', 'Chani', 'Chivahle', 'Chrystyne', 'Cyelena', 'Dalavesta', 'Desini', 'Dylena', 'Ebatryne', 'Ecematare', 'Efari', 'Enaldie', 'Enoka', 'Enoona', 'Errinaya', 'Fayne', 'Frederika', 'Frida', 'Gene', 'Gessane', 'Gronalyn', 'Gvene', 'Gwethana', 'Halete', 'Helenia', 'Hildandi', 'Hyza', 'Idona', 'Ikini', 'Ilanna', 'Illia', 'Iona', 'Jessika', 'Jezzine', 'Justalyne', 'Kassina', 'Kilayox', 'Kilia', 'Kilyne', 'Kressara', 'Kali', 'Laela', 'Laenaya', 'Lelani', 'Lenala', 'Linovahle', 'Linyah', 'Lloyanda', 'Lolinda', 'Lyna', 'Lynessa', 'Mehande', 'Melisande', 'Mirayam', 'Mylene', 'Nachaloa', 'Naria', 'Narisa', 'Nelenna', 'Niraya', 'Nymira', 'Nimerya', 'Ochala', 'Onathe', 'Ondola', 'Orwyne', 'Parthinia', 'Pascheine', 'Peri’el', 'Pharysene', 'Philadona', 'Prisane', 'Prysala', 'Pythe', 'Q’ara', 'Q’pala', 'Rivatha', 'Ryiah', 'Sanala', 'Sathe', 'Senira', 'Sennetta', 'Sepherene', 'Serane', 'Sevestra', 'Sidara', 'Sidathe', 'Sina', 'Sunete', 'Synestra', 'Sythini', 'Szene', 'Tabika', 'Tabithi', 'Tajule', 'Tamare', 'Teresse', 'Tolida', 'Tonica', 'Treka', 'Tressa', 'Trinsa', 'Tryane', 'Tybressa', 'Tycane', 'Tysinni', 'Undaria', 'Uneste', 'Urda', 'Usara', 'Useli', 'Ussesa', 'Venessa', 'Veseere', 'Voladea', 'Vysarane', 'Vythica', 'Wanera', 'Welisarne', 'Wellisa', 'Wesolyne', 'Wyeta', 'Yilvoxe', 'Yve', 'Yviene', 'Yvonnette', 'Yysara', 'Zana', 'Zathe', 'Zecele', 'Zenobia', 'Zephale', 'Zephere', 'Zerma', 'Zestia', 'Zilka', 'Zoura', 'Zrye', 'Zyneste', 'Zynoa', 'Brunhild', 'Zora', 'Eva', 'Romina', 'Melody', 'Leontine', 'Daphne', 'Elodie', 'Poppy', 'Freya', 'Mabeline', 'Arcadia', 'Flora', 'Brigita', 'Charlotte', 'Phoebe', 'Georgina', 'Maris', 'Mavis', 'Elena', 'Eliza', 'Briony', 'Elise', 'Mabel', 'Noemi', 'Fiora', 'Bianca', 'Cosima', 'Romilly', 'Winter', 'Lila', 'Mila', 'Amelina', 'Pomeline', 'Summer', 'Autum', 'Wendy', 'Alysia', 'Alura', 'Alundra', 'Candance', 'Fay', 'Fayette', 'Lunnete', 'Oona', 'Nissa', 'Shea', 'Tanya', 'Lina', 'Saskia', 'Rosalia', 'Annika', 'Wilhelmina', 'Cerelia', 'Miri', 'Carlotta', 'Forsythia', 'Gardenia', 'Caspia', 'Inez', 'Serena', 'Viola', 'Shira', 'Risa', 'Therese', 'Indigo', 'Valentina', 'Catalina', 'Katerina', 'Beatrice', 'Beatrix', 'Eliora', 'Elona', 'Leilani', 'Lorelai', 'Lorelynn', 'Lilac', 'Sapphira', 'Elliette', 'Olliandra', 'Chiara', 'Serafine', 'Raidence', 'Thierra', 'Lucinna', 'Aethelu', 'Beverly', 'Daisy', 'Ella', 'Heloise', 'Isabella', 'Margery', 'Merry', 'Odilia', 'Reina', 'Rhoslyn', 'Sigourney', 'Trea', 'Teah', 'Galadriel', 'Adelina', 'Albreda', 'Aldith', 'Aldusa', 'Alina', 'Amanda', 'Amicia', 'Amiria', 'Anabel', 'Annora', 'Ascilia', 'Avelina', 'Avice', 'Basilea', 'Bela', 'Berta', 'Christian', 'Christiana', 'Clarice', 'Dionisia', 'Denise', 'Ellen', 'Eleanor', 'Estrilda', 'Fina', 'Goda', 'Golda', 'Grecia', 'Gundrea', 'Gundred', 'Gunnora', 'Haunild', 'Hawisa', 'Helen', 'Helewise', 'Hilda', 'Ida', 'Idonea', 'Isolda', 'Joana', 'Juliana', 'Katherine', 'Leticia', 'Lettice', 'Liecia', 'Linota', 'Lora', 'Lara', 'Lucia', 'Amabilia', 'Malota', 'Maud', 'Millicent', 'Nesta', 'Nicole', 'Parnel', 'Petronilla', 'Richenda', 'Richolda', 'Roesia', 'Sabina', 'Sabelina', 'Sarah', 'Sybila', 'Wymarc', 'Adaltrude', 'Adallinda', 'Bertrada', 'Fastrada', 'Gersvinda', 'Gisela', 'Gundrada', 'Hildegarde', 'Hiltrude', 'Liutgarde', 'Madelgarde', 'Ruothilde', 'Rothaide', 'Rotrude', 'Theoderada', 'Theodelinda', 'Andrinne', 'Lyana', 'Arya', 'Cersei', 'Sansa', 'Brienne', 'Margaery', 'Missandei', 'Melisandre', 'Shae'

  
	]

	gender = ['Masculino', 'Feminino']

	ages = ['Criança', 'Adolescente', 'Adulto', 'Idoso']

	racas = ['Humano Ocidental', 'Humano Sulista', 'Humano Mesocontinental', 'Elfo da Lua',
	'Elfo do Sol', 'Elfo Selvagem', 'Anão Escudo', 'Meio-Orc', 'Meio-Elfo da Lua',
	'Meio-Elfo do Sol'
	]

	print "Gerando NPCs... "

	num_npc = 0

	num_m = 0
	num_w = 0

	num_c = 0
	num_t = 0
	num_a = 0
	num_i = 0

	ho = 0
	hm = 0
	hs = 0
	el = 0
	eso = 0
	ese = 0
	mo = 0
	mel = 0
	meso = 0
	ae = 0

	
	while num_npc < 500 do
		npc = Npc.new

		#gender
		npc_gender = gender.sample
		if npc_gender == 'Masculino'
			if num_m >= 275
				npc_gender = 'Feminino'
			end
		else
			if num_w >= 275
				npc_gender = 'Masculino'
			end
		end

		npc.gender = npc_gender

		nomes = Array.new(15)
		i = 0
		if npc.gender == 'Feminino'
			while i < 15 do
				nomes[i] = mulheres.sample
				i+=1
			end

			npc.name = nomes.sample
			num_w +=1
		else
			while i < 15 do
				nomes[i] = homens.sample
				i+=1
			end
			npc.name = nomes.sample
			num_m +=1
		end
		#verificação de idades
		
		idade = ages.sample
		#verificação caso idoso não ok
		if idade == 'Idoso' && num_i >= 1
			idade = 'Criança'
			if num_c >= 50
				idade = 'Adolescente'
				if num_t >= 150
					idade = 'Adulto'
					num_a =+1
					
				elsif idade == 'Adolescente'
					num_t += 1
					
				end
			else
				num_c += 1
					
			end
		#verificação idoso ok
		elsif idade == 'Idoso'
			num_i += 1
		
		#verificação criança não ok
		elsif idade == 'Criança' && num_c >= 50
			idade = 'Adolescente'
			if num_t >= 150
				idade = 'Adulto'
				num_a =+1
		
			else
				num_t += 1
			end
			#verificação criança ok
		elsif idade == 'Criança'
			num_c += 1
		
			
		#verificação adolescente não ok
		elsif idade == 'Adolescente' && num_t >= 150
			idade = 'Adulto'
			num_a =+1
		
		#verificação de adolescente
		elsif idade == 'Adolescente'
			num_t += 1
		
		#aceitação para adulto
		elsif idade == 'Adulto'
			num_a =+1
		
		end	 			
		
		#fim verificação de idade		

		
		raca_npc = racas.sample
		#verificação MESO não
		if raca_npc == 'Meio-Elfo do Sol' && meso >= 2
			raca_npc = 'Meio-Orc'
			if mo >= 3
				raca_npc = 'Meio-Elfo da Lua'
				if mel >= 5
					raca_npc = 'Anão Escudo'
					if ae >= 5
						raca_npc = 'Elfo Selvagem'
						if ese >= 10
							raca_npc = 'Elfo do Sol'
							if eso >= 10
								raca_npc = 'Humano Sulista'
								if hs >= 10
									raca_npc = 'Elfo da Lua'
									if el >= 30
										raca_npc = 'Humano Mesocontinental'
										if hm >= 50
											raca_npc = 'Humano Ocidental'
											ho += 1
		
										else 
											hm += 1
		
										end
									else 
										el += 1
		
									end
								else 
									hs += 1
		
								end
							else 
								eso += 1
		
							end
						else 
							ese += 1
		
						end
					else 
						ae += 1
					end
				else 
					mel += 1
				end
			else
				mo+=1
			end
		elsif raca_npc == 'Meio-Elfo do Sol'
			meso+=1
		elsif raca_npc == 'Meio-Orc' && mo >= 3
			raca_npc = 'Meio-Elfo da Lua'
			if mel >= 5
				raca_npc = 'Anão Escudo'
				if ae >= 5
					raca_npc = 'Elfo Selvagem'
					if ese >= 10
						raca_npc = 'Elfo do Sol'
						if eso >= 10
							raca_npc = 'Humano Sulista'
							if hs >= 10
								raca_npc = 'Elfo da Lua'
								if el >= 30
									raca_npc = 'Humano Mesocontinental'
									if hm >= 50
										raca_npc = 'Humano Ocidental'
										ho += 1
		
									else 
										hm += 1
		
									end
								else 
									el += 1
		
								end
							else 
								hs += 1
		
							end
						else 
							eso += 1
		
						end
					else 
						ese += 1
		
					end
				else 
					ae += 1
				end
			else 
				mel += 1
			end
		elsif raca_npc == 'Meio-Orc'
			mo+=1 
		elsif raca_npc == 'Meio-Elfo da Lua' && mel >= 5
			raca_npc = 'Anão Escudo'
			if ae >= 5
				raca_npc = 'Elfo Selvagem'
				if ese >= 10
					raca_npc = 'Elfo do Sol'
					if eso >= 10
						raca_npc = 'Humano Sulista'
						if hs >= 10
							raca_npc = 'Elfo da Lua'
							if el >= 30
								raca_npc = 'Humano Mesocontinental'
								if hm >= 50
									raca_npc = 'Humano Ocidental'
									ho += 1
								else 
									hm += 1	
								end
							else 
								el += 1
							end
						else 
							hs += 1		
						end
					else 
						eso += 1
					end
				else 
					ese += 1
				end
			else 
				ae += 1
			end
		elsif raca_npc == 'Meio-Elfo da Lua'
			mel+=1 

		elsif raca_npc == 'Anão Escudo' && ae >= 5
			raca_npc = 'Elfo Selvagem'
			if ese >= 10
				raca_npc = 'Elfo do Sol'
				if eso >= 10
					raca_npc = 'Humano Sulista'
					if hs >= 10
						raca_npc = 'Elfo da Lua'
						if el >= 30
							raca_npc = 'Humano Mesocontinental'
							if hm >= 50
								raca_npc = 'Humano Ocidental'
								ho += 1
							else 
								hm += 1	
							end
						else 
							el += 1
						end
					else 
						hs += 1		
					end
				else 
					eso += 1
				end
			else 
				ese += 1
			end
		elsif raca_npc == 'Anão Escudo'
			ae+=1

		elsif raca_npc == 'Elfo Selvagem' && ese >= 10
			raca_npc = 'Elfo do Sol'
			if eso >= 10
				raca_npc = 'Humano Sulista'
				if hs >= 10
					raca_npc = 'Elfo da Lua'
					if el >= 30
						raca_npc = 'Humano Mesocontinental'
						if hm >= 50
							raca_npc = 'Humano Ocidental'
							ho += 1
						else 
							hm += 1	
						end
					else 
						el += 1
					end
				else 
					hs += 1		
				end
			else 
				eso += 1
			end
		elsif raca_npc == 'Elfo Selvagem'
			ese+=1

		elsif raca_npc == 'Elfo do Sol' && eso >= 10
			raca_npc = 'Humano Sulista'
			if hs >= 10
				raca_npc = 'Elfo da Lua'
				if el >= 30
					raca_npc = 'Humano Mesocontinental'
					if hm >= 50
						raca_npc = 'Humano Ocidental'
						ho += 1
					else 
						hm += 1	
					end
				else 
					el += 1
				end
			else 
				hs += 1		
			end
		elsif raca_npc == 'Elfo do Sol'
			eso+=1
		
		elsif raca_npc == 'Humano Sulista' && hs >= 10
			raca_npc = 'Elfo da Lua'
			if el >= 30
				raca_npc = 'Humano Mesocontinental'
				if hm >= 50
					raca_npc = 'Humano Ocidental'
					ho += 1
				else 
					hm += 1	
				end
			else 
				el += 1
			end
		elsif raca_npc == 'Humano Sulista'
			hs+=1

		elsif raca_npc == 'Elfo da Lua' && el >= 30
			raca_npc = 'Humano Mesocontinental'
			if hm >= 50
				raca_npc = 'Humano Ocidental'
				ho += 1
			else 
				hm += 1	
			end
		elsif raca_npc == 'Elfo da Lua'
			el+=1

		elsif raca_npc == 'Humano Mesocontinental' && hm >= 50
				raca_npc = 'Humano Ocidental'
				ho += 1
		elsif raca_npc == 'Humano Mesocontinental'
			hm+=1
		elsif raca_npc == 'Humano Ocidental'
				ho += 1
		end
	
		#fim raças
		#inserindo raça
		npc.race = Race.where(name: raca_npc).first
	
		
		#papéis
		npc.role_id = Role.all.sample.id
		npc.description = '-'
		npc.background = '-'

		range = Array.new

		case idade
			when 'Idoso'
				min = npc.race.adult
				max = npc.race.ancient
				min +=1
				while min <= max do
					range<<min
					min+=1
				end
				npc.age = range.sample
			when 'Adulto'
				min = npc.race.teen
				max = npc.race.adult
				min +=1
				while min <= max do
					range<<min
					min+=1
				end
				npc.age = range.sample
			when 'Adolescente'
				min = npc.race.child
				max = npc.race.teen
				min +=1
				while min <= max do
					range<<min
					min+=1
				end
				npc.age = range.sample
			else
				min = 1
				max = npc.race.child
				while min <= max do
					range<<min
					min+=1
				end
				npc.age = range.sample
		end

		npc.age_range = idade

		npc.save

		#ultimas ações dentro da seed
		#print Npc.count
		#print ' '
		#print npc.name
		#print ' - '


 		num_npc+=1
	end


puts '[OK]'

print 'Verificando nomes masculinos... '
	new_homens = Array.new

	homens.each do |h|
		if new_homens.index(h) == nil
			new_homens<<h
		end
	end

	if new_homens == homens
		puts '[OK]'
	else
		puts ''
		puts 'Nova lista sem repetições:'

		new_homens.each do |n|
			print '\''
			print n
			print '\', '
		end
		puts ''
	end
print 'Verificando nomes femininos... '
	new_mulheres = Array.new

	mulheres.each do |h|
		if new_mulheres.index(h) == nil
			new_mulheres<<h
		end
	end

	if new_mulheres == mulheres
		puts '[OK]'
	else
		puts ''
		puts 'Nova lista sem repetições:'

		new_mulheres.each do |n|
			print '\''
			print n
			print '\', '
		end
		puts ''
	end

	print 'Ocupações extras'
	roles = [
		{name: 'Sem Ocupação', description: '-' }
		
	]

	roles.each do | r |
		Role.create!(r)
	end
puts '[OK]'


print 'Gerando Localizações... '
	local = [
		{name: 'Rena', description: 'O povoado de Rena fica próximo a alguns bosques e ao Monte dos Anões. Foi fundada a em trono de 115 anos por um grupo de viajantes', secret: '-' },
		{name: 'Mina', description: 'A mina do Monte dos Anões é bastante extensa internamente. Há indicações de que outras pessoas, possivelmente anões, viveram aqui antes. Há várias marcas de runas nas paredes mas que não fazem muito sentido para a linguagem Anã atual. Dizem que à noite Kobolds mineram neste local ou proximidades.', secret: 'Há uma cidade anã chamada "Bazaar" que pode ser acessada pela mina. Os anões lutavam contra kobolds e acabaram sendo derrotados por sua própria magia e ganância.' },
		{name: 'Floresta Dourada', description: 'A sudeste da cidade há uma floresta de folhas amareladas. As árvores (Celesta) possuem copa vasta, repleta de suas folhas douradas que são anestésicas.  Muitas vezes o chão desta floresta é coberto por folhas quase esbranquiçadas que caem com a mudança das estações. A madeira das Celestas é muito resistente como Madeira-Ferro, mas extremamente densa e de difícil derrubada e cresce muito lentamente. Muitas abelhas buscam fazer suas colméias nestas árvores pois dão flores liláses. Flores estas que são usadas para desejar saúde a alguém doente.', secret: '-' },
		{name: 'Floresta Baitz', description: 'A floresta ganhou este nome devido a grande quantidade de Baitz, árvore de casca espinhosa e marrom, com copa alta e esverdeada. O chá dos espinhos desta árvore são utilizados para cortar efeito de venenos diversos. O tronco é medianamente largo e possui uma madeira macia, boa para pequenos trabalhos com canivete e artesenato. Não utilizada em construções pesadas por ser pouco resistente mas pode ser usada como telhado ou piso. Há boatos de que há uma tribo de Kobolds que se esconde nesta floresta e eles possuem flechas venenosas.', secret: '-' },
		{name: 'Bosque dos Amantes ou Bosque Iggy Neh', description: 'A floresta fervilha de vida com muitas árvores de frutos comestíveis e arbustos. O tom da floresta é de vermelho com alaranjado, que torna o local muito belo em especial ao entardecer. Muitos casais jovens passeiam pela floresta após se casarem. Devido a enorme variedade de madeiras, medianamente resistentes, muito a utilizam para bases de sustentação de construções.', secret: '-' },
		{name: 'Rio das Fadas', description: 'Apesar do nome, o rio de águas lentas possui vegetação ciliar Florete (nome popular da Taboa) possui vagalumes que voam à noite em seu curso. O rio é bom para pesca, apesar de ter mais peixes na primavera e bem menos no inverno.', secret: '-' },		
		{name: 'Bosque Cercado', description: 'Bosque cheio de tons avermelhados e alaranjados de suas diversas árvores. Possui grande diversidade animal e é maior que o "Bosque dos Amantes".', secret: '-' },
		{name: 'Floresta Proibida', description: 'Também chamada de Floresta da Morte ou Floresta da Coragem. As cores diversas que inundam os olhos durante o dia e tarde com sua flora e fauna escondem plantas exóticas como a Sussurradora, muito utilizada em ritos religiosos e é extremamente valiosa. Alguns dizem que há uma bruxa anã no interior desta floresta que circunda o Monte dos Anões e ela comanda os mortos para pegar qualquer um que durma em seus domínios. Alguns jovens que "acampam" nas proximidades voltam no início da noite, trazendo mais histórias de medo para a vila.', secret: 'Há "uma" doppleganger que nasceu feiticeira e se tornou maga de 5º nível caótica e má que vive na região que busca compreender a magia dos Anões. "Ela" busca vingar-se do povoado por ter sido abandonada aqui a 75 anos.' },
		{name: 'Monte dos Anões', description: 'Bastante vasto mas não muito alto, o Monte dos Anões possui gramíneas e caprinos que buscam sal em suas rochas altas. Algumas aves de rapina fazem ninhos nas pedras mais inacessíveis.', secret: 'A cidade "Bazaar" é enorme e possui diversas criaturas em seu interior, frutos da magia anã e é extremamente perigosa' },
		{name: 'O Lago', description: 'Pequeno corpo de água que é utilizado para banho, muito mais como entretenimento do que para higiene. Na primavera, muitos peixes vem até O Lago e se alimentam do que os moradores jogam para eles', secret: '-' }
	]

	local.each do | l |
		Scenario.create!(l)
	end
puts '[OK]'

print 'Relacionando Skills e Classes... '
	tabela = [
		{skill_id: 1, dnd_class_id: 7},

		{skill_id: 2, dnd_class_id:  2},
		{skill_id: 2, dnd_class_id:  7},
		{skill_id: 2, dnd_class_id:  9},

		{skill_id: 3, dnd_class_id:  1},
		{skill_id: 3, dnd_class_id:  4},
		{skill_id: 3, dnd_class_id:  10},
		{skill_id: 3, dnd_class_id:  11},

		{skill_id: 4, dnd_class_id:  2},
		{skill_id: 4, dnd_class_id:  7},
		{skill_id: 4, dnd_class_id:  9},


		{skill_id: 5, dnd_class_id:  2},
		{skill_id: 5, dnd_class_id:  7},
		{skill_id: 5, dnd_class_id:  9},
		
		{skill_id: 6, dnd_class_id:  2},
		{skill_id: 6, dnd_class_id:  7},
		{skill_id: 6, dnd_class_id:  9},
		
		{skill_id: 7, dnd_class_id:  2},
		{skill_id: 7, dnd_class_id:  7},
		{skill_id: 7, dnd_class_id:  9},
		
		{skill_id: 8, dnd_class_id:  2},
		{skill_id: 8, dnd_class_id:  7},
		{skill_id: 8, dnd_class_id:  9},

		{skill_id: 9, dnd_class_id:  2},
		{skill_id: 9, dnd_class_id:  7},
		{skill_id: 9, dnd_class_id:  9},
		
		{skill_id: 10, dnd_class_id:  2},
		{skill_id: 10, dnd_class_id:  7},
		{skill_id: 10, dnd_class_id:  9},
		
		{skill_id: 11, dnd_class_id:  2},
		{skill_id: 11, dnd_class_id:  7},
		{skill_id: 11, dnd_class_id:  9},

		{skill_id: 12, dnd_class_id:  2},
		{skill_id: 12, dnd_class_id:  7},
		{skill_id: 12, dnd_class_id:  9},

		{skill_id: 13, dnd_class_id:  2},
		{skill_id: 13, dnd_class_id:  7},
		{skill_id: 13, dnd_class_id:  9},


		{skill_id: 14, dnd_class_id:  2},
		{skill_id: 14, dnd_class_id:  7},

		{skill_id: 15, dnd_class_id:  2},
		{skill_id: 15, dnd_class_id:  5},
		{skill_id: 15, dnd_class_id:  7},

		{skill_id: 16, dnd_class_id:  1},
		{skill_id: 16, dnd_class_id:  4},
		{skill_id: 16, dnd_class_id:  6},
		{skill_id: 16, dnd_class_id:  10},
		{skill_id: 16, dnd_class_id:  11},

		{skill_id: 17, dnd_class_id:  2},
		{skill_id: 17, dnd_class_id:  3},
		{skill_id: 17, dnd_class_id:  4},
		{skill_id: 17, dnd_class_id:  9},
		{skill_id: 17, dnd_class_id:  10},
		{skill_id: 17, dnd_class_id:  11},
		{skill_id: 17, dnd_class_id:  5},
		{skill_id: 17, dnd_class_id:  8},

		{skill_id: 18, dnd_class_id:  2},
		{skill_id: 18, dnd_class_id:  3},
		{skill_id: 18, dnd_class_id:  9},
		{skill_id: 18, dnd_class_id:  5},
		{skill_id: 18, dnd_class_id:  8},

		{skill_id: 19, dnd_class_id:  2},
		{skill_id: 19, dnd_class_id:  8},

		{skill_id: 20, dnd_class_id:  2},
		{skill_id: 20, dnd_class_id:  11},
		{skill_id: 20, dnd_class_id:  8},

		{skill_id: 21, dnd_class_id:  2},
		{skill_id: 21, dnd_class_id:  3},
		{skill_id: 21, dnd_class_id:  8},

		{skill_id: 22, dnd_class_id:  2},
		{skill_id: 22, dnd_class_id:  7},
		{skill_id: 22, dnd_class_id:  8},		

		{skill_id: 23, dnd_class_id:  2},
		{skill_id: 23, dnd_class_id:  11},
		{skill_id: 23, dnd_class_id:  8},

		{skill_id: 24, dnd_class_id:  2},
		{skill_id: 24, dnd_class_id:  11},
		{skill_id: 24, dnd_class_id:  8},

		{skill_id: 25, dnd_class_id:  2},
		{skill_id: 25, dnd_class_id:  10},
		{skill_id: 25, dnd_class_id:  8},

		{skill_id: 26, dnd_class_id:  2},
		{skill_id: 26, dnd_class_id:  3},
		{skill_id: 26, dnd_class_id:  8},

		{skill_id: 27, dnd_class_id:  2},
		{skill_id: 27, dnd_class_id:  3},
		{skill_id: 27, dnd_class_id:  9},
		{skill_id: 27, dnd_class_id:  10},
		{skill_id: 27, dnd_class_id:  8},

		{skill_id: 28, dnd_class_id:  3},
		{skill_id: 28, dnd_class_id:  4},
		{skill_id: 28, dnd_class_id:  10},
		{skill_id: 28, dnd_class_id:  11},

		{skill_id: 29, dnd_class_id:  2},
		{skill_id: 29, dnd_class_id:  7},
		{skill_id: 29, dnd_class_id:  8},

		{skill_id: 30, dnd_class_id:  2},
		{skill_id: 30, dnd_class_id:  3},
		{skill_id: 30, dnd_class_id:  4},
		{skill_id: 30, dnd_class_id:  9},
		{skill_id: 30, dnd_class_id:  10},
		{skill_id: 30, dnd_class_id:  7},

		{skill_id: 31, dnd_class_id:  2},
		{skill_id: 31, dnd_class_id:  7},

		{skill_id: 32, dnd_class_id:  2},
		{skill_id: 32, dnd_class_id:  9},
		{skill_id: 32, dnd_class_id:  7},

		{skill_id: 33, dnd_class_id:  1},
		{skill_id: 33, dnd_class_id:  2},
		{skill_id: 33, dnd_class_id:  6},
		{skill_id: 33, dnd_class_id:  9},
		{skill_id: 33, dnd_class_id:  11},
		{skill_id: 33, dnd_class_id:  7},
		{skill_id: 33, dnd_class_id:  2},

		{skill_id: 34, dnd_class_id:  2},
		{skill_id: 34, dnd_class_id:  9},
		{skill_id: 34, dnd_class_id:  11},
		{skill_id: 34, dnd_class_id:  7},

		{skill_id: 35, dnd_class_id:  2},
		{skill_id: 36, dnd_class_id:  2},
		{skill_id: 37, dnd_class_id:  2},
		{skill_id: 38, dnd_class_id:  2},
		{skill_id: 39, dnd_class_id:  2},
		{skill_id: 40, dnd_class_id:  2},
		{skill_id: 41, dnd_class_id:  2},
		{skill_id: 42, dnd_class_id:  2},
		{skill_id: 43, dnd_class_id:  2},
		{skill_id: 44, dnd_class_id:  2},
		{skill_id: 45, dnd_class_id:  2},
		{skill_id: 46, dnd_class_id:  2},
		{skill_id: 47, dnd_class_id:  2},
		{skill_id: 48, dnd_class_id:  2},
		{skill_id: 49, dnd_class_id:  2},
		{skill_id: 50, dnd_class_id:  2},
		{skill_id: 51, dnd_class_id:  2},
		{skill_id: 52, dnd_class_id:  2},
		{skill_id: 53, dnd_class_id:  2},
		{skill_id: 54, dnd_class_id:  2},
		{skill_id: 55, dnd_class_id:  2},

		{skill_id: 56, dnd_class_id:  7},

		{skill_id: 57, dnd_class_id:  2},
		{skill_id: 57, dnd_class_id:  9},
		{skill_id: 57, dnd_class_id:  11},
		{skill_id: 57, dnd_class_id:  7},

		{skill_id: 58, dnd_class_id:  2},
		{skill_id: 58, dnd_class_id:  3},
		{skill_id: 58, dnd_class_id:  4},
		{skill_id: 58, dnd_class_id:  5},
		{skill_id: 58, dnd_class_id:  8},

		{skill_id: 59, dnd_class_id:  1},
		{skill_id: 59, dnd_class_id:  6},
		{skill_id: 59, dnd_class_id:  7},

		{skill_id: 60, dnd_class_id:  1},
		{skill_id: 60, dnd_class_id:  2},
		{skill_id: 60, dnd_class_id:  4},
		{skill_id: 60, dnd_class_id:  6},
		{skill_id: 60, dnd_class_id:  9},
		{skill_id: 60, dnd_class_id:  11},
		{skill_id: 60, dnd_class_id:  5},

		{skill_id: 61, dnd_class_id:  4},
		{skill_id: 61, dnd_class_id:  9},
		{skill_id: 61, dnd_class_id:  11},
		{skill_id: 61, dnd_class_id:  7},

		{skill_id: 62, dnd_class_id:  2},
		{skill_id: 62, dnd_class_id:  7},

		{skill_id: 63, dnd_class_id:  1},
		{skill_id: 63, dnd_class_id:  2},
		{skill_id: 63, dnd_class_id:  3},
		{skill_id: 63, dnd_class_id:  4},
		{skill_id: 63, dnd_class_id:  5},
		{skill_id: 63, dnd_class_id:  6},
		{skill_id: 63, dnd_class_id:  7},
		{skill_id: 63, dnd_class_id:  8},
		{skill_id: 63, dnd_class_id:  9},
		{skill_id: 63, dnd_class_id:  10},
		{skill_id: 63, dnd_class_id:  11},

		{skill_id: 64, dnd_class_id:  1},
		{skill_id: 64, dnd_class_id:  2},
		{skill_id: 64, dnd_class_id:  3},
		{skill_id: 64, dnd_class_id:  4},
		{skill_id: 64, dnd_class_id:  5},
		{skill_id: 64, dnd_class_id:  6},
		{skill_id: 64, dnd_class_id:  7},
		{skill_id: 64, dnd_class_id:  8},
		{skill_id: 64, dnd_class_id:  9},
		{skill_id: 64, dnd_class_id:  10},
		{skill_id: 64, dnd_class_id:  11},

		{skill_id: 65, dnd_class_id:  1},
		{skill_id: 65, dnd_class_id:  2},
		{skill_id: 65, dnd_class_id:  3},
		{skill_id: 65, dnd_class_id:  4},
		{skill_id: 65, dnd_class_id:  5},
		{skill_id: 65, dnd_class_id:  6},
		{skill_id: 65, dnd_class_id:  7},
		{skill_id: 65, dnd_class_id:  8},
		{skill_id: 65, dnd_class_id:  9},
		{skill_id: 65, dnd_class_id:  10},
		{skill_id: 65, dnd_class_id:  11},

		{skill_id: 66, dnd_class_id:  1},
		{skill_id: 66, dnd_class_id:  2},
		{skill_id: 66, dnd_class_id:  3},
		{skill_id: 66, dnd_class_id:  4},
		{skill_id: 66, dnd_class_id:  5},
		{skill_id: 66, dnd_class_id:  6},
		{skill_id: 66, dnd_class_id:  7},
		{skill_id: 66, dnd_class_id:  8},
		{skill_id: 66, dnd_class_id:  9},
		{skill_id: 66, dnd_class_id:  10},
		{skill_id: 66, dnd_class_id:  11},

		{skill_id: 67, dnd_class_id:  1},
		{skill_id: 67, dnd_class_id:  2},
		{skill_id: 67, dnd_class_id:  3},
		{skill_id: 67, dnd_class_id:  4},
		{skill_id: 67, dnd_class_id:  5},
		{skill_id: 67, dnd_class_id:  6},
		{skill_id: 67, dnd_class_id:  7},
		{skill_id: 67, dnd_class_id:  8},
		{skill_id: 67, dnd_class_id:  9},
		{skill_id: 67, dnd_class_id:  10},
		{skill_id: 67, dnd_class_id:  11},

		{skill_id: 68, dnd_class_id:  1},
		{skill_id: 68, dnd_class_id:  2},
		{skill_id: 68, dnd_class_id:  3},
		{skill_id: 68, dnd_class_id:  4},
		{skill_id: 68, dnd_class_id:  5},
		{skill_id: 68, dnd_class_id:  6},
		{skill_id: 68, dnd_class_id:  7},
		{skill_id: 68, dnd_class_id:  8},
		{skill_id: 68, dnd_class_id:  9},
		{skill_id: 68, dnd_class_id:  10},
		{skill_id: 68, dnd_class_id:  11},

		{skill_id: 69, dnd_class_id:  1},
		{skill_id: 69, dnd_class_id:  2},
		{skill_id: 69, dnd_class_id:  3},
		{skill_id: 69, dnd_class_id:  4},
		{skill_id: 69, dnd_class_id:  5},
		{skill_id: 69, dnd_class_id:  6},
		{skill_id: 69, dnd_class_id:  7},
		{skill_id: 69, dnd_class_id:  8},
		{skill_id: 69, dnd_class_id:  9},
		{skill_id: 69, dnd_class_id:  10},
		{skill_id: 69, dnd_class_id:  11},

		{skill_id: 70, dnd_class_id:  1},
		{skill_id: 70, dnd_class_id:  2},
		{skill_id: 70, dnd_class_id:  3},
		{skill_id: 70, dnd_class_id:  4},
		{skill_id: 70, dnd_class_id:  5},
		{skill_id: 70, dnd_class_id:  6},
		{skill_id: 70, dnd_class_id:  7},
		{skill_id: 70, dnd_class_id:  8},
		{skill_id: 70, dnd_class_id:  9},
		{skill_id: 70, dnd_class_id:  10},
		{skill_id: 70, dnd_class_id:  11},

		{skill_id: 71, dnd_class_id:  1},
		{skill_id: 71, dnd_class_id:  2},
		{skill_id: 71, dnd_class_id:  3},
		{skill_id: 71, dnd_class_id:  4},
		{skill_id: 71, dnd_class_id:  5},
		{skill_id: 71, dnd_class_id:  6},
		{skill_id: 71, dnd_class_id:  7},
		{skill_id: 71, dnd_class_id:  8},
		{skill_id: 71, dnd_class_id:  9},
		{skill_id: 71, dnd_class_id:  10},
		{skill_id: 71, dnd_class_id:  11},

		{skill_id: 72, dnd_class_id:  7},

		{skill_id: 73, dnd_class_id:  1},
		{skill_id: 73, dnd_class_id:  2},
		{skill_id: 73, dnd_class_id:  4},
		{skill_id: 73, dnd_class_id:  9},
		{skill_id: 73, dnd_class_id:  7},
		{skill_id: 73, dnd_class_id:  11},

		{skill_id: 74, dnd_class_id:  2},
		{skill_id: 74, dnd_class_id:  7},

		{skill_id: 75, dnd_class_id:  11},
		{skill_id: 75, dnd_class_id:  7},

		{skill_id: 76, dnd_class_id:  2},
		{skill_id: 76, dnd_class_id:  3},
		{skill_id: 76, dnd_class_id:  4},
		{skill_id: 76, dnd_class_id:  5},
		{skill_id: 76, dnd_class_id:  6},
		{skill_id: 76, dnd_class_id:  7},
		{skill_id: 76, dnd_class_id:  8},
		{skill_id: 76, dnd_class_id:  9},
		{skill_id: 76, dnd_class_id:  10},
		{skill_id: 76, dnd_class_id:  11},

		{skill_id: 77, dnd_class_id:  2},
		{skill_id: 77, dnd_class_id:  3},
		{skill_id: 77, dnd_class_id:  4},
		{skill_id: 77, dnd_class_id:  5},
		{skill_id: 77, dnd_class_id:  6},
		{skill_id: 77, dnd_class_id:  7},
		{skill_id: 77, dnd_class_id:  8},
		{skill_id: 77, dnd_class_id:  9},
		{skill_id: 77, dnd_class_id:  10},
		{skill_id: 77, dnd_class_id:  11},

		{skill_id: 78, dnd_class_id:  2},
		{skill_id: 78, dnd_class_id:  3},
		{skill_id: 78, dnd_class_id:  4},
		{skill_id: 78, dnd_class_id:  5},
		{skill_id: 78, dnd_class_id:  6},
		{skill_id: 78, dnd_class_id:  7},
		{skill_id: 78, dnd_class_id:  8},
		{skill_id: 78, dnd_class_id:  9},
		{skill_id: 78, dnd_class_id:  10},
		{skill_id: 78, dnd_class_id:  11},

		{skill_id: 79, dnd_class_id:  2},
		{skill_id: 79, dnd_class_id:  3},
		{skill_id: 79, dnd_class_id:  4},
		{skill_id: 79, dnd_class_id:  5},
		{skill_id: 79, dnd_class_id:  6},
		{skill_id: 79, dnd_class_id:  7},
		{skill_id: 79, dnd_class_id:  8},
		{skill_id: 79, dnd_class_id:  9},
		{skill_id: 79, dnd_class_id:  10},
		{skill_id: 79, dnd_class_id:  11},

		{skill_id: 80, dnd_class_id:  2},
		{skill_id: 80, dnd_class_id:  3},
		{skill_id: 80, dnd_class_id:  4},
		{skill_id: 80, dnd_class_id:  5},
		{skill_id: 80, dnd_class_id:  6},
		{skill_id: 80, dnd_class_id:  7},
		{skill_id: 80, dnd_class_id:  8},
		{skill_id: 80, dnd_class_id:  9},
		{skill_id: 80, dnd_class_id:  10},
		{skill_id: 80, dnd_class_id:  11},

		{skill_id: 81, dnd_class_id:  2},
		{skill_id: 81, dnd_class_id:  3},
		{skill_id: 81, dnd_class_id:  4},
		{skill_id: 81, dnd_class_id:  5},
		{skill_id: 81, dnd_class_id:  6},
		{skill_id: 81, dnd_class_id:  7},
		{skill_id: 81, dnd_class_id:  8},
		{skill_id: 81, dnd_class_id:  9},
		{skill_id: 81, dnd_class_id:  10},
		{skill_id: 81, dnd_class_id:  11},

		{skill_id: 82, dnd_class_id:  2},
		{skill_id: 82, dnd_class_id:  3},
		{skill_id: 82, dnd_class_id:  4},
		{skill_id: 82, dnd_class_id:  5},
		{skill_id: 82, dnd_class_id:  6},
		{skill_id: 82, dnd_class_id:  7},
		{skill_id: 82, dnd_class_id:  8},
		{skill_id: 82, dnd_class_id:  9},
		{skill_id: 82, dnd_class_id:  10},
		{skill_id: 82, dnd_class_id:  11},

		{skill_id: 83, dnd_class_id:  2},
		{skill_id: 83, dnd_class_id:  3},
		{skill_id: 83, dnd_class_id:  4},
		{skill_id: 83, dnd_class_id:  5},
		{skill_id: 83, dnd_class_id:  6},
		{skill_id: 83, dnd_class_id:  7},
		{skill_id: 83, dnd_class_id:  8},
		{skill_id: 83, dnd_class_id:  9},
		{skill_id: 83, dnd_class_id:  10},
		{skill_id: 83, dnd_class_id:  11},

		{skill_id: 84, dnd_class_id:  2},
		{skill_id: 84, dnd_class_id:  3},
		{skill_id: 84, dnd_class_id:  4},
		{skill_id: 84, dnd_class_id:  5},
		{skill_id: 84, dnd_class_id:  6},
		{skill_id: 84, dnd_class_id:  7},
		{skill_id: 84, dnd_class_id:  8},
		{skill_id: 84, dnd_class_id:  9},
		{skill_id: 84, dnd_class_id:  10},
		{skill_id: 84, dnd_class_id:  11},

		{skill_id: 85, dnd_class_id:  2},
		{skill_id: 85, dnd_class_id:  3},
		{skill_id: 85, dnd_class_id:  4},
		{skill_id: 85, dnd_class_id:  5},
		{skill_id: 85, dnd_class_id:  6},
		{skill_id: 85, dnd_class_id:  7},
		{skill_id: 85, dnd_class_id:  8},
		{skill_id: 85, dnd_class_id:  9},
		{skill_id: 85, dnd_class_id:  10},
		{skill_id: 85, dnd_class_id:  11},

		{skill_id: 86, dnd_class_id:  2},
		{skill_id: 86, dnd_class_id:  3},
		{skill_id: 86, dnd_class_id:  4},
		{skill_id: 86, dnd_class_id:  5},
		{skill_id: 86, dnd_class_id:  6},
		{skill_id: 86, dnd_class_id:  7},
		{skill_id: 86, dnd_class_id:  8},
		{skill_id: 86, dnd_class_id:  9},
		{skill_id: 86, dnd_class_id:  10},
		{skill_id: 86, dnd_class_id:  11},

		{skill_id: 87, dnd_class_id:  2},
		{skill_id: 87, dnd_class_id:  3},
		{skill_id: 87, dnd_class_id:  4},
		{skill_id: 87, dnd_class_id:  5},
		{skill_id: 87, dnd_class_id:  6},
		{skill_id: 87, dnd_class_id:  7},
		{skill_id: 87, dnd_class_id:  8},
		{skill_id: 87, dnd_class_id:  9},
		{skill_id: 87, dnd_class_id:  10},
		{skill_id: 87, dnd_class_id:  11},

		{skill_id: 88, dnd_class_id:  2},
		{skill_id: 88, dnd_class_id:  3},
		{skill_id: 88, dnd_class_id:  4},
		{skill_id: 88, dnd_class_id:  5},
		{skill_id: 88, dnd_class_id:  6},
		{skill_id: 88, dnd_class_id:  7},
		{skill_id: 88, dnd_class_id:  8},
		{skill_id: 88, dnd_class_id:  9},
		{skill_id: 88, dnd_class_id:  10},
		{skill_id: 88, dnd_class_id:  11},

		{skill_id: 89, dnd_class_id:  2},
		{skill_id: 89, dnd_class_id:  3},
		{skill_id: 89, dnd_class_id:  4},
		{skill_id: 89, dnd_class_id:  5},
		{skill_id: 89, dnd_class_id:  6},
		{skill_id: 89, dnd_class_id:  7},
		{skill_id: 89, dnd_class_id:  8},
		{skill_id: 89, dnd_class_id:  9},
		{skill_id: 89, dnd_class_id:  10},
		{skill_id: 89, dnd_class_id:  11},

		{skill_id: 90, dnd_class_id:  2},
		{skill_id: 90, dnd_class_id:  3},
		{skill_id: 90, dnd_class_id:  4},
		{skill_id: 90, dnd_class_id:  5},
		{skill_id: 90, dnd_class_id:  6},
		{skill_id: 90, dnd_class_id:  7},
		{skill_id: 90, dnd_class_id:  8},
		{skill_id: 90, dnd_class_id:  9},
		{skill_id: 90, dnd_class_id:  10},
		{skill_id: 90, dnd_class_id:  11},

		{skill_id: 91, dnd_class_id:  2},
		{skill_id: 91, dnd_class_id:  3},
		{skill_id: 91, dnd_class_id:  4},
		{skill_id: 91, dnd_class_id:  5},
		{skill_id: 91, dnd_class_id:  6},
		{skill_id: 91, dnd_class_id:  7},
		{skill_id: 91, dnd_class_id:  8},
		{skill_id: 91, dnd_class_id:  9},
		{skill_id: 91, dnd_class_id:  10},
		{skill_id: 91, dnd_class_id:  11},

		{skill_id: 92, dnd_class_id:  2},
		{skill_id: 92, dnd_class_id:  3},
		{skill_id: 92, dnd_class_id:  4},
		{skill_id: 92, dnd_class_id:  5},
		{skill_id: 92, dnd_class_id:  6},
		{skill_id: 92, dnd_class_id:  7},
		{skill_id: 92, dnd_class_id:  8},
		{skill_id: 92, dnd_class_id:  9},
		{skill_id: 92, dnd_class_id:  10},
		{skill_id: 92, dnd_class_id:  11},

		{skill_id: 93, dnd_class_id:  2},
		{skill_id: 93, dnd_class_id:  3},
		{skill_id: 93, dnd_class_id:  4},
		{skill_id: 93, dnd_class_id:  5},
		{skill_id: 93, dnd_class_id:  6},
		{skill_id: 93, dnd_class_id:  7},
		{skill_id: 93, dnd_class_id:  8},
		{skill_id: 93, dnd_class_id:  9},
		{skill_id: 93, dnd_class_id:  10},
		{skill_id: 93, dnd_class_id:  11},

		{skill_id: 94, dnd_class_id:  2},
		{skill_id: 94, dnd_class_id:  3},
		{skill_id: 94, dnd_class_id:  4},
		{skill_id: 94, dnd_class_id:  5},
		{skill_id: 94, dnd_class_id:  6},
		{skill_id: 94, dnd_class_id:  7},
		{skill_id: 94, dnd_class_id:  8},
		{skill_id: 94, dnd_class_id:  9},
		{skill_id: 94, dnd_class_id:  10},
		{skill_id: 94, dnd_class_id:  11},

		{skill_id: 95, dnd_class_id:  2},
		{skill_id: 95, dnd_class_id:  3},
		{skill_id: 95, dnd_class_id:  4},
		{skill_id: 95, dnd_class_id:  5},
		{skill_id: 95, dnd_class_id:  6},
		{skill_id: 95, dnd_class_id:  7},
		{skill_id: 95, dnd_class_id:  8},
		{skill_id: 95, dnd_class_id:  9},
		{skill_id: 95, dnd_class_id:  10},
		{skill_id: 95, dnd_class_id:  11},

		{skill_id: 96, dnd_class_id:  2},
		{skill_id: 96, dnd_class_id:  3},
		{skill_id: 96, dnd_class_id:  6},
		{skill_id: 96, dnd_class_id:  9},
		{skill_id: 96, dnd_class_id:  11},
		{skill_id: 96, dnd_class_id:  7},

		{skill_id: 97, dnd_class_id:  2},
		{skill_id: 97, dnd_class_id:  9},
		{skill_id: 97, dnd_class_id:  10},
		{skill_id: 97, dnd_class_id:  7},

		{skill_id: 98, dnd_class_id:  1},
		{skill_id: 98, dnd_class_id:  4},
		{skill_id: 98, dnd_class_id:  11},

		{skill_id: 99, dnd_class_id:  11},
		{skill_id: 99, dnd_class_id:  7},

		{skill_id: 100, dnd_class_id:  2},
		{skill_id: 100, dnd_class_id:  7}

	]

	

	tabela.each do |t|
		DndClassesSkill.create!(t)
	end
puts '[OK]'


puts '------------------------'
puts 'Relatório'
puts '------------------------'
print 'Nomes Masculinos: '
puts homens.count
print 'Nomes Femininos: '
puts mulheres.count
print 'Raças : '
puts races.count
print 'Classes: '
puts classes.count
print 'Perícias: '
puts skills.count
print 'Ocupações: '
puts roles.count
print 'Npcs: '
puts Npc.count
print 'Npcs Homens: '
puts Npc.where(gender: 'Masculino').count
print 'Npcs Mulheres: '
puts Npc.where(gender: 'Feminino').count
print 'Locais: '
puts Scenario.count
puts '------------------------'
puts 'Seed Completa!'