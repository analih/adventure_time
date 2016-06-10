class Character
  attr_reader :name
  attr_accessor :location 
  
  def self.all 
    [
      Character.new('Jake'),
      Character.new('Finn'),
      Character.new('Marceline'),
      Character.new('Princess Bubblegum'),
      Character.new('The Ice King'),
      Character.new('BMO')

    ]
  end

  def initialize(name)
  	@name = name
  end

  def have_encounter!
    
    if location.encounters.length == 0 
      "No more encounters avaliable"
    else
      encounter = location.encounters.pop 
      encounter.name
    end
    
  end

end