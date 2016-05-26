class Location 
	attr_reader :name, :encounters

  def initialize(name)
    @name = name 
    @encounters = []
  end

end
