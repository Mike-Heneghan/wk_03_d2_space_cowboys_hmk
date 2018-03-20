require("pry")
require("pg")

class Bounty

  attr_accessor :name, :species, :bounty_value, :danger_level
  attr_reader :id

  def initialize ( bounties )
    @name = bounties['name']
    @species = bounties['species']
    @bounty_value = bounties['bounty_value'].to_i
    @danger_level = bounties['danger_level']

  end

  def save
    db = PG.connect( { dbname: 'bounty_hunter', host: 'localhost' })

    sql = "
    INSERT INTO bounties
    (name, species, bounty_value, danger_level)
    VALUES ($1,$2,$3,$4)
    ;
    "
    values = [@name, @species, @bounty_value, @danger_level]

    db.prepare("save", sql)
    db.exec_prepared("save", values)


    db.close()
  end

  def Bounty.all()
    db = PG.connect ( { dbname: 'bounty_hunter', host: 'localhost'} )

    sql = "
    SELECT *
    FROM bounties
    ORDER BY name
    ;
    "

    db.prepare("all", sql)
    prey = db.exec_prepared("all")

    db.close()

    bounty_objects = prey.map { |prey_hash| Bounty.new(prey_hash) }

    return bounty_objects

  end

  def Bounty.delete_all()

    db = PG.connect ( {dbname: 'bounty_hunter', host: 'localhost' })

    sql = "
    DELETE
    FROM bounties
    ;
    "
    db.prepare("delete_all", sql)
    db.exec_prepared("delete_all")
    db.close()

  end

  def update()

    db = PG.connect ( { dbname: 'bounty_hunter', host: 'localhost'})

    sql = "
    UPDATE bounties
    (name, species, bounty_value, danger_level)
    VALUES
    ($1, $2, $3, $4)
    WHERE (id = $5)
    ;
    "

    values = [@name, @species, @bounty_value, @danger_level]

    db.prepare("update_field", sql)
    db.exec_prepared("update_field", values)

    db.close()


  end



















end
