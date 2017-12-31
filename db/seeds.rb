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




puts 'Seed Completa!'