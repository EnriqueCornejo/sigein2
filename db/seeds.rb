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

puts "Generando recursos materiales"

MaterialResource.create([
  {name: "Blasters (DH-17 blaster pistol)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Blaster rifle (E-11 blaster rifle)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Heavy blaster pistol (DL-44 heavy blaster pistol)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sporting blaster (Defender sporting blaster)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Light repeating blaster (T-21 light repeating blaster)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "E-Web repeating blaster", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Jawa ionization blaster", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Bowcaster", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Beam tube (Emperor-4 beam tube)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Ssi-ruuvi paddle beamer", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Disruptor (DX-2 disruptor pistol, DXR-6 disruptor rifle)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sonic pistol (Sd-77 sonic pistol, Sg-82 sonic rifle)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Wrist rockets (MM9 rocket system)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Stokhli spray stick", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Projectile weapons (Oriolanis Striker Projectile Pistol, Dressellian projectile rifle)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Flame projector (C-22 flame carbine, CR-24 flame rifle)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Dart shooter (Stealth-2VX palm shooter, PRP-502 hold-out dart shooter)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Flechette launcher (FWG-5 flechette pistol, FC-1 flechette launcher)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Missile tube (PLX-2M portable missile launcher)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Thermal detonator (Class-A thermal detonator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Grenades (G-20 Glop grenade, C-22 fragmentation grenade, WW-41 CryoBan grenade)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Grenade mortar (MobileMortar-3)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Blaster artillery", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Anti-vehicle artillery", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Anti-infantry battery", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Lightsaber", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Exar Kun's lightsaber", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Gaderffii", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Force pike (Controller FP)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Vibro-ax (Clan Groogrun vibro-ax, BD-1 Cutter vibro-ax)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Vibroblade (Treppus-2 vibroblade, Vibroknuckler)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Ryyk blades", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Stun baton (Merr-Sonn stun baton, Merr-Sonn KZZ riot armor)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Individual field disruptor (Evasive-13 individual field disruptor)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Proton torpedoes (MG7-A proton torpedo, MG7 proton torpedo launcher)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Concussion missiles (ST2 concussion missile, ST2 concussion missile rack)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Laser cannons (KX9 laser cannon, AG-2G quad laser cannon)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Deflector shield generator (ISD-72x shield generator dome, Chempat shield generator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Ion cannons (NK-7 ion cannon)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Tractor beam projector (Q7 tractor beam projector)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Turbolasers (XX-9 heavy turbolaser)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Proton grenade (7-PrG proton grenade)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Diamond boron missile (MS-15 diamond boron missile)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Cluster bomb (CL-3 antistarfighter cluster bomb)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Mine (Defender ion mine, 3HX3 repulsorlift mine)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Planetary ion cannons (v-150 Planet Defender)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Planetary turbolaser (w-165 planetary turbolaser)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Cloaking device (prototype cloak field generator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Orbital Nightcloak", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Planetary shields (SLD-26 planetary shield generator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Superlaser", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sun Crusher", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Galaxy Gun", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Com-scan (OrC-19 com-scan integrator console)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Electrotelescope (VXI-3 electrotelescope)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Portable scanner (EnhanceScan general-purpose scanner)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sensor tag (SureSnoop sensor tag)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sensor beacon (SE-Vigilant automated sensor beacon)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Sensor jammers (4x-Phantom short-range sensor jammer, 220-SIG tactical combat jammer)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Homing beacon (XXt-26 S-thread tracker)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Comlinks (C1 personal comlink, 3-MAL personal comlink, PAC20 visual wrist comm)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Cybernetic implant comlink/pager (At-cyb husher mike)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Subspace transceivers (Frequency Agile subspace transceiver)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "HoloNet transceiver (Hologram projection pod)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Stun cuffs (SC-401 stun cuffs)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Stun nets (RL-40 stun net launcher)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Slaving collars (Thalassian security collar)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Nerve disruptor (Agonizer-6 nerve disruptor)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Universal energy cage", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Man trap (R-TechAp man trap)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Automated laser trap (Class VI automated laser projector)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Rank cylinder", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Electronic lock breaker (OutlawTech lock breaker)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Security scanners (57C holocam)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Bioscan", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Holographic image disguiser (CQ-3.9x holographic image disguiser)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Molecularly bonded armor and anticoncussion field (Molecular-bond armor sheath and Rampart-class anticoncussion generator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Common hand tools, (F-187 fusioncutter, ReliaCharger power calibrator, FastTurn-3 hydrospanner)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Breath mask (Roamer-6 breath mask)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Vaporator (GX-8 water vaporator)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Electrobinoculars (Model TD2.3 electrobinoculars)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Beamdrill (G2-GE beamdrill)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Glow rod (Industrial glow rod)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Recording rod (PersonalAssistant-4x recording rod)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Harpoon and tow cable (Power harpoon launcher)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Hologram projector (CS-Mark 12 holoprojector)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Jet, rocket, and repulsor packs (Z-6 jetpack)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Medpac (FastFlesh medpac, GLiS emergency medpac)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Bacta tank", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Remote (Marksman-H combat remote)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Seeker (Mark VII Inquisitor seeker)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Datapad (Companion2000 datapad)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Cyborg unit (Borg Construct Aj^6)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Carbon-freezing chamber (Class three carbon-freezing chamber)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Holocron (Jedi holocron)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Ssi-ruuvi Entechment Rig", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Organic gill", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Magwit's Mystifying Hoop", date_of_purchase: Date.today, amortization_date: (Date.today + 365)},
  {name: "Infrared motion sensor (NiteSite infrared motion sensor)", date_of_purchase: Date.today, amortization_date: (Date.today + 365)}
])

puts "Generando Recursos Humanos"

HumanResource.create([
  {name: "Luke Skywalker"},
  {name: "Han Solo"},
  {name: "Chewbacca"},
  {name: "R2D2"},
  {name: "C3PO"},
  {name: "Darth Vader"}
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
  (1..3).each do |n|
    ResolutionDimension.create ({
      :name => "Dimension #{n} de #{rg}",
      :resolution_group => rg
      })
  end
end

ResolutionDimension.all.each do |rd|
  (1..5).each do |n|
    Resolution.create({
      :name => "Resolución #{n} de #{rd}",
      :resolution => n * 0.2,
      :resolution_dimension => rd
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
    :magnitude_method => MagnitudeMethod.find_by_name("Primer método"),
    :importance => 0.6
    })
  Magnitude.create({
    :name => "Mg 2 de #{obj}",
    :management_object => obj,
    :unit => Unit.first,
    :magnitude_method => MagnitudeMethod.find_by_name("Segundo método"),
    :importance => 0.4
    })
end

puts "Generando categorías de valoración"

ValorationCategory.create([
  {name: "Species"},
  {name: "Habitats"},
  {name: "Birds"},
  {name: "Whales"},
  {name: "Generic"}
])

puts "Asignando categorías a los objetos"

Specie.all.each do |sp|
  ObjectCategory.create({
    :management_object => ManagementObject.find(sp.id),
    :valoration_category => ValorationCategory.find_by_name("Species")
    })
end

Specie.limit(10).each do |sp|
  ObjectCategory.create({
    :management_object => ManagementObject.find(sp.id),
    :valoration_category => ValorationCategory.find_by_name("Birds")
    })
end


Habitat.all.each do |sp|
  ObjectCategory.create({
    :management_object => ManagementObject.find(sp.id),
    :valoration_category => ValorationCategory.find_by_name("Habitats")
    })
end

puts "Generando reglas"

Rule.create([
  {:name => "Primera regla (especies)", :valoration_category => ValorationCategory.find_by_name("Species")},
  {:name => "Segunda regla (pájaros)",  :valoration_category => ValorationCategory.find_by_name("Birds")},
  {:name => "Tercera regla (habitats)", :valoration_category => ValorationCategory.find_by_name("Habitats")}
])

puts "Generando valores para las reglas"

RuleValue.create([
  {:category => "Extinto",                  :categorical_value => "EX", :numerical_value => 10, :rule => Rule.find_by_name("Primera regla")},
  {:category => "En peligro de extinción",  :categorical_value => "PE", :numerical_value => 9,  :rule => Rule.find_by_name("Primera regla")},
  {:category => "Amenazado",                :categorical_value => "A",  :numerical_value => 8,  :rule => Rule.find_by_name("Primera regla")},
  {:category => "En peligro",               :categorical_value => "EP", :numerical_value => 6,  :rule => Rule.find_by_name("Segunda regla")},
  {:category => "En peligro leve",          :categorical_value => "PL", :numerical_value => 4,  :rule => Rule.find_by_name("Segunda regla")}
])