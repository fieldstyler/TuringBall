class League
  attr_reader :name, :divisions, :teams

  def initialize(name)
    @name = name
    @divisions = [:east, :west]
    @teams = []
  end

  def add_team(team)
    @teams << team
  end

end
