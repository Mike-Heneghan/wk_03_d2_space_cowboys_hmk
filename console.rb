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

# Bounty.delete_all
#
# bounty1.save()
# bounty2.save()
# bounty3.save()
# bounty4.save()
# bounty5.save()

all_bounties = Bounty.all()

first_object = all_bounties.first
first_object.name = "Blagharst the Awful"
first_object.update()

# Why is p all_bounties and Bounty.all different?
# p all_bounties
# puts ""
# p Bounty.all()
# puts ""

first_object.delete()

p Bounty.all()
puts ""

target = Bounty.find_by_name('Roy Batty')
p target
puts ""

target2 = Bounty.find_by_id(3)
p target2
puts ""
