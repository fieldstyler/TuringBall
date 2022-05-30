class Team
  attr_reader :name, :city, :coach, :players

  def initialize(name, city, coach)
    @name = name
    @city = city
    @coach = coach
    @players = []
  end

  def sign_player(player)
    @players << player
  end

end
