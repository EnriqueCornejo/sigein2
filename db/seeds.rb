# encoding: utf-8


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Generando tipos de objeto"
ObjectType.create([
  {:name => "Species"},
  {:name => "Habitats"}
])


puts "Generando especies"
ManagementObject.create([
  {:name => "Aleena", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Amanin", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Ansionian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Boltrunians", :object_type => ObjectType.find_by_name("Species")},
  {:name => "B'omarr", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Bothan", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Bouncer", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Caamasi", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Cathar", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Carondian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Celegian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Cerean", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Chadra-Fan", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Chagrian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Chazrach", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Chiss", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Chistori", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Clawdite", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Codru-Ji", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Coway", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Croke", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Dantari", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Dashade", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Defel", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Devaronian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Drach'nam", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Draethos", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Drall", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Dressellian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Droch", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Droid", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Drovian", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Dug", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Dulok", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Duros", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Echani", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Elom", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Elomin", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Epicanthix", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Er'Kit", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Ewok", :object_type => ObjectType.find_by_name("Species")},
  {:name => "Evocii", :object_type => ObjectType.find_by_name("Species")}
])

puts "Generando hábitats"
ManagementObject.create([
{:name => "Alderaan", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Anoat", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Ansion", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Bespin", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Bogden", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Boz Pity", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Cato Neimoidia", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Corellia", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Coruscant", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Dagobah", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Dantooine", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Endor", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Felucia", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Geonosis", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Hoth", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Iego", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Kamino", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Kashyyyk", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Kessel", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Malastare", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Mustafar", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Mygeeto", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Naboo", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Nar Shaddaa", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Ord Mantell", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Polis Massa", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Saleucami", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Subterrel", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Sullust", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Taanab", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Tatooine", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Tund", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Utapau", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Yavin", :object_type => ObjectType.find_by_name("Habitats")},
{:name => "Yavin IV", :object_type => ObjectType.find_by_name("Habitats")}
])

puts "Generando Unidades"

Unit.create([
  {:name => "Amount"},
  {:name => "Kg"},
  {:name => "Degrees"}
])

puts "Generando Magnitudes"

ManagementObject.all.each do |obj|
  Magnitude.create({
    :name => "Mg 1 de #{obj}",
    :management_object => obj,
    :unit => Unit.first
    })
end

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