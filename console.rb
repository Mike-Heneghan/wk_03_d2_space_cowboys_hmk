require("pg")
require("pry")
require_relative("model/Bounty.rb")

bounty_hash1 = { 'name' => "Blagharst the Obscene", 'species' => 'Black Hole Demon', 'bounty_value' => '89098', 'danger_level' => 'medium'  }

bounty1 = Bounty.new( bounty_hash1 )

bounty_hash2 = { 'name' => 'Simon the Incorrigible', 'species' => 'Human', 'bounty_value' => '908896', 'danger_level' => 'high'  }

bounty2 = Bounty.new( bounty_hash2 )

bounty_hash3 = { 'name' => 'Venom', 'species' => 'Symbiote', 'bounty_value' => '8997', 'danger_level' => 'low'  }

bounty3 = Bounty.new( bounty_hash3 )

bounty_hash4 = { 'name' => 'Christopher Johnson', 'species' => 'Space Prawn', 'bounty_value' => '6748930', 'danger_level' => 'low'  }

bounty4 = Bounty.new( bounty_hash4 )

bounty_hash5 = { 'name' => 'Roy Batty', 'species' => 'NEXUS-6 N6MAA10816', 'bounty_value' => '890988696', 'danger_level' => 'ermagerdyerderd'  }

bounty5 = Bounty.new( bounty_hash5 )

# bounty1.save()
# bounty2.save()
# bounty3.save()
# bounty4.save()
# bounty5.save()

p Bounty.all()
puts ""
# Bounty.delete_all()
#
# puts Bounty.all()

all_bounties = Bounty.all()

first_bounty_object = all_bounties.first

first_bounty_object.name = "Blagharst the Awful"
first_bounty_object.danger_level = "low"
# first_bounty_object.update()

p Bounty.all()
















#