require("pry")
require("pg")



class Bounty

  attr_reader :name, :species, :bounty_value, :danger_level

  def initialize ( options )
    @name = options['name']
    @species = options['species']
    @bounty_value = options['bount_value'].to_i
    @danger_level = options['danger_level']
  end

end
