# encoding: utf-8


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


puts "Generando especies"
Specie.create([
  {:name => "Aleena"},
  {:name => "Amanin"},
  {:name => "Ansionian"},
  {:name => "Boltrunians"},
  {:name => "B'omarr"},
  {:name => "Bothan"},
  {:name => "Bouncer"},
  {:name => "Caamasi"},
  {:name => "Cathar"},
  {:name => "Carondian"},
  {:name => "Celegian"},
  {:name => "Cerean"},
  {:name => "Chadra-Fan"},
  {:name => "Chagrian"},
  {:name => "Chazrach"},
  {:name => "Chiss"},
  {:name => "Chistori"},
  {:name => "Clawdite"},
  {:name => "Codru-Ji"},
  {:name => "Coway"},
  {:name => "Croke"},
  {:name => "Dantari"},
  {:name => "Dashade"},
  {:name => "Defel"},
  {:name => "Devaronian"},
  {:name => "Drach'nam"},
  {:name => "Draethos"},
  {:name => "Drall"},
  {:name => "Dressellian"},
  {:name => "Droch"},
  {:name => "Droid"},
  {:name => "Drovian"},
  {:name => "Dug"},
  {:name => "Dulok"},
  {:name => "Duros"},
  {:name => "Echani"},
  {:name => "Elom"},
  {:name => "Elomin"},
  {:name => "Epicanthix"},
  {:name => "Er'Kit"},
  {:name => "Ewok"},
  {:name => "Evocii"}
])

puts "Generando hábitats"
Habitat.create([
{:name => "Alderaan"},
{:name => "Anoat"},
{:name => "Ansion"},
{:name => "Bespin"},
{:name => "Bogden"},
{:name => "Boz Pity"},
{:name => "Cato Neimoidia"},
{:name => "Corellia"},
{:name => "Coruscant"},
{:name => "Dagobah"},
{:name => "Dantooine"},
{:name => "Endor"},
{:name => "Felucia"},
{:name => "Geonosis"},
{:name => "Hoth"},
{:name => "Iego"},
{:name => "Kamino"},
{:name => "Kashyyyk"},
{:name => "Kessel"},
{:name => "Malastare"},
{:name => "Mustafar"},
{:name => "Mygeeto"},
{:name => "Naboo"},
{:name => "Nar Shaddaa"},
{:name => "Ord Mantell"},
{:name => "Polis Massa"},
{:name => "Saleucami"},
{:name => "Subterrel"},
{:name => "Sullust"},
{:name => "Taanab"},
{:name => "Tatooine"},
{:name => "Tund"},
{:name => "Utapau"},
{:name => "Yavin"},
{:name => "Yavin IV"}
])

puts "Generando Unidades"

Unit.create([
  {:name => "Amount"},
  {:name => "Kg"},
  {:name => "Degrees"}
])

puts "Generando Resoluciones y Grupos de Resolución"

ResolutionGroup.create([
  {:name => "Primero"},
  {:name => "Segundo"},
  {:name => "Tercero"}
])

ResolutionGroup.all.each do |rg|
  (1..5).each do |n|
    Resolution.create ({
      :name => "Resolution #{n}",
      :resolution_group => rg,
      :resolution => Random.rand
      })
  end
end

puts "Generando Métodos"

MagnitudeMethod.create([
  {
    :resolution_group_id => ResolutionGroup.find_by_name("Primero").id,
    :name => "Primer método",
    :description => "Descripción del primer método"
  },
  {
    :resolution_group_id => ResolutionGroup.find_by_name("Segundo").id,
    :name => "Segundo método",
    :description => "Descripción del segundo método"
  }
])

puts "Generando Magnitudes"

ManagementObject.all.each do |obj|
  Magnitude.create({
    :name => "Mg 1 de #{obj}",
    :management_object => obj,
    :unit => Unit.first,
    :magnitude_method => MagnitudeMethod.find_by_name("Primer método")
    })
  Magnitude.create({
    :name => "Mg 2 de #{obj}",
    :management_object => obj,
    :unit => Unit.first,
    :magnitude_method => MagnitudeMethod.find_by_name("Segundo método")
    })
end

puts "Generando reglas"

Rule.create([
  {:name => "Primera regla"},
  {:name => "Segunda regla"}
])

puts "Generando valores para las reglas"

RuleValue.create([
  {:category => "Extinto",                  :categorical_value => "EX", :numerical_value => 10, :rule => Rule.find_by_name("Primera regla")},
  {:category => "En peligro de extinción",  :categorical_value => "PE", :numerical_value => 9,  :rule => Rule.find_by_name("Primera regla")},
  {:category => "Amenazado",                :categorical_value => "A",  :numerical_value => 8,  :rule => Rule.find_by_name("Primera regla")},
  {:category => "En peligro",               :categorical_value => "EP", :numerical_value => 6,  :rule => Rule.find_by_name("Segunda regla")},
  {:category => "En peligro leve",          :categorical_value => "PL", :numerical_value => 4,  :rule => Rule.find_by_name("Segunda regla")}
])