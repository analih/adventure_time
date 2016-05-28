class Ally
  attr_reader :name

  def self.all 
    [ 
      Ally.new("Banana Guard"),
      Ally.new("Cinnamon Bun"),
      Ally.new("Pighyooman"),
      Ally.new("James Baxter the Horse"),
      Ally.new("Tree Trunks")

    ]
  end

  def initialize(name)
    @name = name
  end
end