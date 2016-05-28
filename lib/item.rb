class Item
  attr_reader :name

  def self.all
    [
      Item.new("Magic Wands"),
      Item.new("Wish Orbs"),
      Item.new("Lumps Antidote"),
      Item.new("Nightosphere Amulet"),
      Item.new("Prism-gram")
    ]
  end

  def initialize(name)
    @name = name
  end
end