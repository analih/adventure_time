class Barrier
  attr_reader :name

  def self.all
    [
      Barrier.new("Challenged to a game of Card Wars"),
      Barrier.new(""),
      Barrier.new(""),
      Barrier.new(""),
      Barrier.new("")

    ]
  end

  def initialize(name)
    @name = name
  end
end