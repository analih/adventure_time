class Blessing
  attr_reader :name

  def self.all 
    [
      Blessing.new(""),
      Blessing.new(""),
      Blessing.new(""),
      Blessing.new(""),
      Blessing.new("")

    ]
  end

  def initialize(name)
    @name = name
  end
end