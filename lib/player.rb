class Player
  attr_reader :name, :number, :positions

  def initialize(name, number, positions)
    @name = name
    @number = number
    @positions = positions
  end
end
