namespace :basic do
  desc "Ferramenta para popular BD"
  task npc: :environment do
  	homens = ['Adam', 'Geoffrey', 'Gilbert', 'Henry', 'Hugh', 'John', 'Nicholas', 'Peter', 'Ralf',
	'Richard', 'Robert', 'Roger', 'Simon', 'Thomas', 'Walter', 'William', 'Merek', 'Carac', 'Ulric',
	'Tybalt', 'Borin', 'Sadon', 'Terrowin', 'Rowan', 'Forthwind', 'Althalos', 'Fendrel', 'Brom',
	'Hadrian', 'Daw', 'Elric', 'Hann', 'Herry', 'Hob', 'Jankin', 'Mack', 'Aldus', 'Jasper', 'Alan',
	'Conan', 'Donald', 'Gawain', 'Basil', 'Arthur', 'Mordred', 'Dervel', 'Percival', 'Agricola', 'Eliot',
	'Hector', 'Manfred', 'Lucius', 'Lambert', 'Griffith', 'Guts', 'Gerald', 'Alphonse', 'Gareth',
	'Aldrich', 'Alistar', 'Allister', 'Archer', 'Ascott', 'Cleff', 'Ashton', 'Barden', 'Barlow',
	'Baxter', 'Bentley', 'Bowman', 'Cid', 'Brandom', 'Cederic', 'Dalton', 'Drake', 'Edgar', 'Sawyer',
	'Allegro', 'Ambrich', 'Bermund', 'Demetrius', 'Faust', 'Finn', 'Jake', 'Cecil', 'Kain', 'Barret',
	'Rex', 'Josef', 'Gordon', 'Locke', 'Ward', 'Dias', 'Leon', 'Noel', 'Cliff', 'Cyrus', 'Magus',
	'Malcom', 'Owen', 'Tristan', 'Alec', 'Greg', 'Alexander', 'Lucian', 'Martin', 'Peregrin', 'Quentin',
	'Connor', 'Vincent', 'Eric', 'Aldwin', 'Baldwin', 'Edward', 'Goldwin', 'Hebert', 'Wilfrid',
	'Abelard', 'Absolon', 'Achard', 'Achart', 'Adalbero', 'Agu', 'Aignen', 'Agnien', 'Alaire', 'Alarge',
	'Alazaïs', 'Albin', 'Albinus', 'Alcher', 'Aldebrand', 'Aldemund', 'Alderan', 'Aleaumin', 'Aliaume',
	'Alyaume', 'Alerot', 'Alodet', 'Aloysius', 'Alured', 'Amadeus', 'Amalric', 'Amalvis', 'Amanieu',
	'Amigart', 'Araimfres', 'Arbert', 'Arnulf', 'Arsieu', 'Arvide', 'Augebert', 'Avenel', 'Baderon',
	'Baldric', 'Bangin', 'Bardin', 'Barnier', 'Baut', 'Biche', 'Billebaut', 'Bochard', 'Bouchard',
	'Burnel', 'Buselin', 'Centule', 'Chartain', 'Chatbert', 'Claudien', 'Colbert', 'Coumyn', 'Cyon',
	'Cyprian', 'Daimbert', 'Dalmas', 'Daluce', 'Damian', 'Darius', 'Delion', 'Digne', 'Doete', 'Dolfin',
	'Duche', 'Dudic', 'Éléazar', 'Emambe', 'Emont', 'Engelard', 'Engenouf', 'Enion', 'Erengier', 'Ertaut',
	'Esdelot', 'Espan', 'Estène', 'Estout', 'Fabien', 'Famète', 'Fameite', 'Fangeaux', 'Fiebras',
	'Flambard', 'Floouen', 'Fluellen', 'Fortin', 'Fourcaut', 'Foursi', 'Fray', 'Fremin', 'Freskin',
	'Ganelon', 'Garsille', 'Gascot', 'Gaubert', 'Gauchier', 'Gaude', 'Gauguein', 'Gembert', 'Gentian',
	'Gentien', 'Gerland', 'Gildon', 'Giriaume', 'Gobin', 'Gobelin', 'Godebert', 'Godichal', 'Golias',
	'Gonfroi', 'Gontier', 'Goumelet', 'Gourdet', 'Gracien', 'Gracyen', 'Granville', 'Grefin', 'Grenville',
	'Grifon', 'Gringoire', 'Guermont', 'Guigue', 'Guineboud', 'Habreham', 'Haguin', 'Haiete', 'Halebran',
	'Halinard', 'Haquin', 'Harchier', 'Hascouf', 'Hecelin', 'Henseus', 'Herbrand', 'Herchier', 'Herculles',
	'Hernouet', 'Hesdin', 'Hétouyn', 'Heude', 'Hique', 'Hocequin', 'Honoré', 'Honot', 'Huard', 'Huart',
	'Huebald', 'Huidelon ', 'Huitace', 'Humbert', 'Hunout', 'Huoul', 'Huroin', 'Ianto', 'Ilbert', 'Isore',
	'Japhet', 'Jeharraz', 'Jehaue', 'Jessamy', 'Jevan', 'Jolis', 'Jollivet', 'Jonas', 'Jonathas', 'Jorin',
	'Jude', 'Jumel', 'Juste', 'Kerrich', 'Lagot', 'Léal', 'Leavold', 'Leigh', 'Leofard', 'Letard', 'Lie',
	'Lièce', 'Maillart', 'Maillet', 'Mainnet', 'Malise', 'Marcel', 'Marin', 'Maulore', 'Meriet', 'Merigot',
	'Elminster', 'Mervin', 'Mervyn', 'Mittainne', 'Morel', 'Néapolion', 'Névelet', 'Nivelet', 'Nicaise',
	'Noeë', 'Noël', 'Norbert', 'Obert', 'Odard', 'Omerus', 'Ondart', 'Orderic', 'Orland', 'Orrick',
	'Othuel', 'Otuel', 'Papin', 'Parcin', 'Pariset', 'Pepin', 'Petruche', 'Philbert', 'Picot', 'Platiau',
	'Popin', 'Popiniau', 'Porchier', 'Poufille', 'Pricion', 'Quabin', 'Quenall', 'Raguenel', 'Raguet',
	'Rahere', 'Rahier', 'Rasequin', 'Ratier', 'Rauve', 'Redway', 'Renonys', 'Renost', 'Renouf', 'Resse',
	'Ribald', 'Ringerus', 'Roderick', 'Rodney', 'Rodolph', 'Roncin', 'Roscelin', 'Rocelin', 'Rocelinus',
	'Rosser', 'Rostand', 'Rotrou', 'Roucaud', 'Ruald', 'Ruaud', 'Rufier', 'Rufin', 'Rufus', 'Russell',
	'Roussel', 'Sadun', 'Saillot', 'Sainte', 'Santin', 'Sehier Syhier', 'Senebaut', 'Sequin', 'Sernays',
	'Sevrin', 'Sicard', 'Sicho', 'Sicre', 'Sigan', 'Sigismund', 'Sirion', 'Sivis', 'Sohalet', 'Soolet',
	'Sohier', 'Souni', 'Sonnet', 'Taillefer', 'Taillemache', 'Talon', 'Tassart', 'Tassot', 'Tassin',
	'Tevenot', 'Thouche', 'Tiessot', 'Torphin', 'Turbertus', 'Turquan', 'Tutain', 'Ulger', 'Vane',
	'Vannes', 'Vézian', 'Victor', 'Waleran', 'Waleron', 'Wynkyn', 'Ydevert', 'Tsabu', 'Parn', 'Cedric',
	'Vash', 'Áed', 'Áedán', 'Áedh', 'Arthfael', 'Bradán', 'Bréanainn', 'Brian', 'Bricius', 'Cadeyrn',
	'Caiside', 'Caomh', 'Caomhán', 'Cathasach', 'Corraidhín', 'Cuidightheach', 'Cunobelinus', 'Cynbel',
	'Cynwrig', 'Donnchad', 'Donndubhán', 'Drest', 'Drust', 'Drustan', 'Dubhshláine', 'Dubhthach',
	'Elisedd', 'Eógan', 'Fáelán', 'Fedelmid', 'Fedlimid', 'Galchobhar', 'Gwrtheryn', 'Haerviu', 'Iodocus',
	'Iudicael', 'Judicaël', 'Judoc', 'Lóegaire', 'Lugubelenus', 'Lugge', 'Máedoc', 'Maeleachlainn',
	'Mathghamhain', 'Mochán', 'Morcant', 'Nechtan', 'Glenn', 'Bram', 'Rory'
	]


	mulheres = ['Sara', 'Tyris', 'Nadia', 'Ayla', 'Leene', 'Magge', 'Marigold', 'Lufu', 'Lindsey',
	'Ababilia', 'Abbatissa', 'Abelota', 'Achethe', 'Admiranda', 'Aicusa', 'Akelda', 'Alainne', 'Alba',
	'Aleusa', 'Alma', 'Alsneta', 'Andrie', 'Angelet', 'Anthoinette', 'Argentina', 'Atilda', 'Avoca',
	'Badelota', 'Bausanne', 'Bauteut', 'Bedeluue', 'Biedeluue', 'Bencelina', 'Benigna', 'Berte',
	'Bertha', 'Blissot', 'Alison', 'Blitha', 'Boime', 'Brise', 'Caesaria', 'Calla', 'Camilla', 'Ceday',
	'Celestine', 'Celestria', 'Chloe', 'Chuna', 'Coulombe', 'Dameta', 'Dametta', 'Damisona', 'Decima',
	'Deloys', 'Desdemona', 'Disdemona', 'Desiderata', 'Desirata', 'Diamanda', 'Diana', 'Dyana', 'Dinae',
	'Dinah', 'Dolichena', 'Dominica', 'Dominy', 'Dorcas', 'Drusilla', 'Drueta', 'Durilda', 'Elaisse',
	'Ellerete', 'Emeria', 'Emery', 'Enota', 'Epicelena', 'Esa', 'Eschiva', 'Esdeline', 'Estienne',
	'Estrangia', 'Eugenia', 'Eustachia', 'Eustacia', 'Finepopla', 'Fortunata', 'Fousafia', 'Gemma',
	'Gerbaga', 'Gem', 'Germainne', 'Gersendis', 'Ginnade', 'Giraude', 'Gladuse', 'Golla', 'Helmech',
	'Helmet', 'Helmeth', 'Helvynya', 'Hesse', 'Houdée', 'Ilene', 'Imedia', 'Katrina', 'Italia',
	'Jeromia', 'Jervaise', 'Jessamine', 'Josiane', 'Josina', 'Jourdenete', 'Justina', 'Keina', 'Kiena',
	'Kemma', 'Kima', 'Kymme', 'Kinna', 'Leda', 'Legarda', 'Ligarda', 'Lige', 'Lena', 'Letselina', 'Lia',
	'Libourc', 'Lictina', 'Lota', 'Maronne', 'Marsilia', 'Martine', 'Maxencia', 'Mazelina', 'Melodia',
	'Melodie', 'Melusine', 'Michièle', 'Minna', 'Minnota', 'Mique', 'Mitri', 'Moder', 'Modesty', 'Nicia',
	'Nycaise', 'Noblete', 'Norma', 'Olimpias', 'Precis', 'Optata', 'Oreute', 'Organa', 'Ottilia',
	'Pacchild', 'Pechel', 'Pandonia', 'Pandwyna', 'Parise', 'Parisete', 'Pasques', 'Paulina', 'Plente',
	'Popelina', 'Preciosa', 'Precious', 'Primaveira', 'Primeveire', 'Pronèle', 'Rametta', 'Roana',
	'Roberge', 'Rogerete', 'Salerna', 'Sewenna', 'Souplice', 'Splendora', 'Sreda', 'Swale',
	'Thangustella', 'Udelina', 'Udeline', 'Ulia', 'Ully', 'Urie', 'Watcelina', 'Wimarca', 'Wimarc',
	'Ynstauncia', 'Ysane', 'Ysenda', 'Ysopa', 'Audrey', 'Zelda', 'Celine', 'Rena', 'Opera', 'Sophia',
	'Aeris', 'Aerith', 'Mirage', 'Gwen', 'Agnes', 'Leah', 'Agatha', 'Aimee', 'Alice', 'Alix', 'Amice',
	'Angharad', 'Ann', 'Anissa', 'Anne', 'Aoibheann', 'Arabella', 'Aurora', 'Ava', 'Aveline', 'Averil',
	'Avila', 'Beata', 'Belinda', 'Blanche', 'Bonita', 'Candida', 'Cassandra', 'Cecilia', 'Cecily',
	'Celia', 'Ceridwen', 'Charis', 'Cicely', 'Clare', 'Clemence', 'Colette', 'Constance', 'Cynthia',
	'Dulcie', 'Eden', 'Edith', 'Elira', 'Elizabeth', 'Eloise', 'Emilia', 'Amelia', 'Emma', 'Ermintrude',
	'Erma', 'Eve', 'Faye', 'Felicia', 'Fleur', 'Genevieve', 'Geneviève', 'Gillian', 'Giselle',
	'Gwendolenh', 'Hedwig', 'Hermia', 'Hermine', 'Hermione', 'Hester', 'Esther', 'Irmtraud', 'Isabel',
	'Isidora', 'Isis', 'Jane', 'Yahweh', 'Jeanne', 'Janet', 'Jennifer', 'Joan', 'Joanna', 'Jocelyn',
	'Joyce', 'Kate', 'Kunigunde', 'Lacey', 'Laetitia', 'Laura', 'Lucy', 'Luitgard', 'Lynette', 'Macy',
	'Marian', 'Marie', 'Marion', 'Marjorie', 'Margaret', 'Mary', 'Matilda', 'Mirabelle', 'Monica',
	'Morfydd', 'Mór', 'Muriel', 'Nancy', 'Cornelia', 'Nerys', 'Nerissa', 'Nicola', 'Olivia', 'Ortrun',
	'Paige', 'Petronia', 'Petra', 'Philippa', 'Polly', 'Prudence', 'Rachel', 'Regina', 'Regula',
	'Rosalind', 'Rosamund', 'Rose', 'Sigrid', 'Síle', 'Sol', 'Stella', 'Susanna', 'Sybil', 'Tamsin',
	'Thomasina', 'Theresa', 'Ursula', 'Violet', 'Wanda', 'Morrigan', 'Leiliana', 'Bethany', 'Viviene',
	'Tallis', 'Sera', 'Isabela', 'Merril', 'Leandra', 'Meredith', 'Flemeth', 'Marethari', 'Petrice',
	'Maren', 'Amalia', 'Anora', 'Bella', 'Kalah', 'Bryce', 'Oriana', 'Danyla', 'Elemena', 'Filda',
	'Gilmore', 'Lanaya', 'Landra', 'Lenka', 'Kaitlyn', 'Isolde', 'Elora', 'Ghenya', 'Goldanna',
	'Leorah', 'Lenne', 'Lily', 'Liselle', 'Lissette', 'Justine', 'Melora', 'Myaja', 'Nola', 'Olinda',
	'Perth', 'Harwen', 'Shale', 'Valena', 'Vasilia', 'Rune', 'Afura', 'Miz', 'Shayla', 'Diva', 'Nimue',
	'Norwena', 'Pietra', 'Luigsech', 'Birthe', 'Boadiceia', 'Buodicca', 'Brianne', 'Bridie', 'Cass',
	'Cleena', 'Deitra', 'Delma', 'Duana', 'Eadan', 'Eigyr', 'Epona', 'Fedelma', 'Feidhelm', 'Fedelm',
	'Fiona', 'Gaenor', 'Guinevere', 'Gwenevere', 'Jenna', 'Jennie', 'Kendra', 'Meave', 'Morgaine', 
	'Morgana', 'Myrna', 'Vivi', 'Yenifer', 'Yenny', 'Mayu', 'Marle', 'Jinnie', 'Lunna', 'Sonya',
	'Sonja', 'Tarja', 'Ceinwyn', 'Nath', 'Becca', 'Karinne', 'Vesta', 'Lanna', 'Arwen', 'Éowyn',
	'Adele', 'Tarya', 'Acele', 'Acholate', 'Ada', 'Adiannon', 'Adorra', 'Ahanna', 'Akara', 'Akassa',
	'Akia', 'Amaerilde', 'Amara', 'Amarisa', 'Amarizi', 'Ana', 'Andonna', 'Ani', 'Annalyn', 'Archane',
	'Ariannona', 'Arina', 'Arryn', 'Asada', 'Awnia', 'Ayne', 'Basete', 'Bathelie', 'Bethe', 'Brana',
	'Brianan', 'Bridonna', 'Brynhilde', 'Calene', 'Calina', 'Celoa', 'Cephenrene', 'Chani', 'Chivahle',
	'Chrystyne', 'Cyelena', 'Dalavesta', 'Desini', 'Dylena', 'Ebatryne', 'Ecematare', 'Efari', 'Enaldie',
	'Enoka', 'Enoona', 'Errinaya', 'Fayne', 'Frederika', 'Frida', 'Gene', 'Gessane', 'Gronalyn', 'Gvene',
	'Gwethana', 'Halete', 'Helenia', 'Hildandi', 'Hyza', 'Idona', 'Ikini', 'Ilanna', 'Illia', 'Iona',
	'Jessika', 'Jezzine', 'Justalyne', 'Kassina', 'Kilayox', 'Kilia', 'Kilyne', 'Kressara', 'Kali',
	'Laela', 'Laenaya', 'Lelani', 'Lenala', 'Linovahle', 'Linyah', 'Lloyanda', 'Lolinda', 'Lyna',
	'Lynessa', 'Mehande', 'Melisande', 'Mirayam', 'Mylene', 'Nachaloa', 'Naria', 'Narisa', 'Nelenna',
	'Niraya', 'Nymira', 'Nimerya', 'Ochala', 'Onathe', 'Ondola', 'Orwyne', 'Parthinia', 'Pascheine',
	'Peri’el', 'Pharysene', 'Philadona', 'Prisane', 'Prysala', 'Pythe', 'Q’ara', 'Q’pala', 'Rivatha',
	'Ryiah', 'Sanala', 'Sathe', 'Senira', 'Sennetta', 'Sepherene', 'Serane', 'Sevestra', 'Sidara',
	'Sidathe', 'Sina', 'Sunete', 'Synestra', 'Sythini', 'Szene', 'Tabika', 'Tabithi', 'Tajule', 'Tamare',
	'Teresse', 'Tolida', 'Tonica', 'Treka', 'Tressa', 'Trinsa', 'Tryane', 'Tybressa', 'Tycane',
	'Tysinni', 'Undaria', 'Uneste', 'Urda', 'Usara', 'Useli', 'Ussesa', 'Venessa', 'Veseere', 'Voladea',
	'Vysarane', 'Vythica', 'Wanera', 'Welisarne', 'Wellisa', 'Wesolyne', 'Wyeta', 'Yilvoxe', 'Yve',
	'Yviene', 'Yvonnette', 'Yysara', 'Zana', 'Zathe', 'Zecele', 'Zenobia', 'Zephale', 'Zephere', 'Zerma',
	'Zestia', 'Zilka', 'Zoura', 'Zrye', 'Zyneste', 'Zynoa', 'Brunhild', 'Zora', 'Eva', 'Romina',
	'Melody', 'Leontine', 'Daphne', 'Elodie', 'Poppy', 'Freya', 'Mabeline', 'Arcadia', 'Flora',
	'Brigita', 'Charlotte', 'Phoebe', 'Georgina', 'Maris', 'Mavis', 'Elena', 'Eliza', 'Briony', 'Elise',
	'Mabel', 'Noemi', 'Fiora', 'Bianca', 'Cosima', 'Romilly', 'Winter', 'Lila', 'Mila', 'Amelina',
	'Pomeline', 'Summer', 'Autum', 'Wendy', 'Alysia', 'Alura', 'Alundra', 'Candance', 'Fay', 'Fayette',
	'Lunnete', 'Oona', 'Nissa', 'Shea', 'Tanya', 'Lina', 'Saskia', 'Rosalia', 'Annika', 'Wilhelmina',
	'Cerelia', 'Miri', 'Carlotta', 'Forsythia', 'Gardenia', 'Caspia', 'Inez', 'Serena', 'Viola', 'Shira',
	'Risa', 'Therese', 'Indigo', 'Valentina', 'Catalina', 'Katerina', 'Beatrice', 'Beatrix', 'Eliora',
	'Elona', 'Leilani', 'Lorelai', 'Lorelynn', 'Lilac', 'Sapphira', 'Elliette', 'Olliandra', 'Chiara',
	'Serafine', 'Raidence', 'Thierra', 'Lucinna'  
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
			while i < 20 do
				nomes[i] = mulheres.sample
				i+=1
			end

			npc.name = nomes.sample
			#npc.name = mulheres.sample
			num_w +=1
		else
			while i < 20 do
				nomes[i] = homens.sample
				i+=1
			end
			npc.name = nomes.sample
			#npc.name = homens.sample
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

 		num_npc+=1
	end


	puts '[OK]'
  end

end
